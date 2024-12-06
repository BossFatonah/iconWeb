const jwt = require('jsonwebtoken');
const config = require("../config/auth.config");
const db = require('../models');
const { employee: Employee, access: Access } = db;

const blacklistedTokens = new Set();

const verifyToken = async (req, res, next) => {
    const token = req.headers['x-access-token'];
    if (!token) return res.status(403).json({ message: "No token provided" });
    if (blacklistedTokens.has(token)) return res.status(401).json({ message: "Token is blacklisted" });

    try {
        const decoded = jwt.verify(token, config.secret);
        req.userId = decoded.id;

        const user = await Employee.findByPk(req.userId, {
            include: [{ model: Access, as: 'access', attributes: ['access_name'] }]
        });
        if (!user || !user.access) return res.status(404).json({ message: "User not found or no access rights" });

        req.userRole = user.access.access_name; // ดึง role (access_name) ของ user
        next();
    } catch (error) {
        res.status(500).json({ message: "Error verifying user", error: error.message });
    }
};


// Middleware สำหรับตรวจสอบสิทธิ์ admin
const isAdmin = (req, res, next) => req.userRole === 'admin' ? next() : res.status(403).json({ message: "Require Admin Role" });

const isUser = (req, res, next) => req.userRole === 'user' ? next() : res.status(403).json({ message: "Require User Role" });

module.exports = { verifyToken, isAdmin, isUser };

