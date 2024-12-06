module.exports =(app) => { //2.7 storage_area ที่เก็บสินค้า
  const router = require('express').Router()
  const storage_areaController = require("../../controllers/controllers_master_data/storage_area.controller")

  router.get('/', storage_areaController.getAllStorage_areas);
  router.get("/search", storage_areaController.searchStorage_areas);

  app.use("/storage_area",router)
} 