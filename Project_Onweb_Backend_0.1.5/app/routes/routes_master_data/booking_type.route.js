module.exports = (app) => { // 2.2 brand ยี่ห้อสินค้า
  const router = require('express').Router()
  const { getAllBooking_types, searchBooking_types } = require("../../controllers/controllers_master_data/booking_type.controller")
  const { verifyToken, isAdmin } = require('../../middleware/authJwt');
  const { isTokenBlacklisted } = require("../../controllers/controllers_master_data/login.controller");
  // เพิ่ม Middleware ที่ใช้ร่วมกัน
  const authMiddleware = [verifyToken, isTokenBlacklisted];

  router.get('/', ...authMiddleware, getAllBooking_types);
  router.get('/search', ...authMiddleware, searchBooking_types);

  app.use("/booking_type", router)
}