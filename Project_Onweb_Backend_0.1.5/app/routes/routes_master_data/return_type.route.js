module.exports =(app) => { //2.11 return_type ประเภทการคืน
  const router = require('express').Router()
  const return_typeController = require("../../controllers/controllers_master_data/return_type.controller")

  router.get('/', return_typeController.getAllReturn_types);
  router.get("/search", return_typeController.searchReturn_types);


  app.use("/return_type",router)
}