module.exports =(app) => { //2.5 seller ผู้จำหน่าย
  const router = require('express').Router()
  const vendorController = require("../../controllers/controllers_master_data/vendor.controller")

  router.get('/', vendorController.getAllVendors);
  router.get("/search", vendorController.searchVendors);

  app.use("/vendor",router)
}