module.exports =(app) => { 
    const router = require('express').Router()
    const { getAllReceives, createReceive } = require("../../controllers/controllers_list/receive.controller")
    const { verifyToken, isAdmin } = require('../../middleware/authJwt');
    const { isTokenBlacklisted } = require("../../controllers/controllers_master_data/login.controller");
 
    const authMiddleware = [verifyToken, isTokenBlacklisted];

    router.get('/', ...authMiddleware,getAllReceives);
    router.post('/createReceive', ...authMiddleware,createReceive);
    
    app.use("/receive",router)
  }