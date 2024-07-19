const express = require('express');
const router = express.Router();
const applicantsController = require('../controllers/applicantsController');

//API aspirantes
router.get('/',applicantsController.renderList);
router.get('/:id',applicantsController.renderDetail);

module.exports = router;