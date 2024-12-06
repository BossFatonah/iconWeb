module.exports =(app) => { // 2.10 payment_type ประเภทการจ่าย
  const router = require('express').Router()
  const payment_typeController = require("../../controllers/controllers_master_data/payment_type.controller")

  router.get('/', payment_typeController.getAllPayment_types);
  router.get("/search", payment_typeController.searchPayment_types);

  app.use("/payment_type",router)
}