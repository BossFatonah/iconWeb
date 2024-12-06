module.exports =(app) => { // 2.9 receive_type ประเภทการรับ
  const router = require('express').Router()
  const receive_typeController = require("../../controllers/controllers_master_data/receive_type.controller")

  router.get('/', receive_typeController.getAllReceive_types);
  router.get("/search", receive_typeController.searchReceive_types);

  app.use("/receive_type",router)
}