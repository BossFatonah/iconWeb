module.exports =(app) => { // 2.8 employee พนักงาน
  const router = require('express').Router()
  const employeeController = require("../../controllers/controllers_master_data/employee.controller")
  

  router.get('/', employeeController.getAllEmployees);
  router.get("/search", employeeController.searchEmployee);


  app.use("/employee",router)
}                   