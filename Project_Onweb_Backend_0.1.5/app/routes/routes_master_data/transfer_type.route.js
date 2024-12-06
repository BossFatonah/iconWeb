module.exports =(app) => { // 2.14 transfer_type ประเภทการโอนย้าย
  const router = require('express').Router()
  const transfer_typeController = require("../../controllers/controllers_master_data/transfer_type.controller")

  router.get('/', transfer_typeController.getAllTransfer_types);
  router.get("/search", transfer_typeController.searchTransfer_types);

  app.use("/transfer_type",router)
} 