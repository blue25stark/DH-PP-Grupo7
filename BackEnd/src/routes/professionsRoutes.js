const express = require('express');
const router = express.Router();

router.get('/list', function(req, res) {
    return ({title: 'API Profesiones'});
  });

module.exports = router;