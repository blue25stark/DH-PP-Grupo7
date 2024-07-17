const express = require('express');
const router = express.Router();

router.get('list', function(req, res) {
    return ({title: 'API Aspirantes'});
  });
//router.get('/detail/:id', {});

module.exports = router;