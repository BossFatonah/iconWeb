module.exports =(app) => { // 2.12 problem_type ประเภทปัญหา
  const router = require('express').Router()
  const issue_typeController = require("../../controllers/controllers_master_data/issue_type.controller")

  router.get('/', issue_typeController.getAllIssue_types);
  router.get("/search", issue_typeController.searchIssue_types);

  app.use("/issue_type",router)
}