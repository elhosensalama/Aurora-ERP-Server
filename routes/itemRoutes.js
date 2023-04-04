const express = require('express');
const itemController = require('../controllers/itemController');
const authController = require('../controllers/authController');

const router = express.Router();

// router.param('id', itemController.checkID);

router
    .route('/top-5-cheap')
    .get(itemController.aliasTopItems, itemController.getAllItems);

router.route('/item-stats').get(itemController.getItemStats);
router
    .route('/monthly-plan/:year')
    .get(
        authController.protect,
        authController.restrictTo('admin'),
        itemController.getMonthlyPlan
    );

router
    .route('/')
    .get(itemController.getAllItems)
    .post(
        authController.protect,
        authController.restrictTo('admin'),
        itemController.createItem
    );

router
    .route('/:id')
    .get(itemController.getItem)
    .patch(
        authController.protect,
        authController.restrictTo('admin'),
        itemController.uploadItemImages,
        itemController.resizeItemImages,
        itemController.updateItem
    )
    .delete(
        authController.protect,
        authController.restrictTo('admin'),
        itemController.deleteItem
    );

module.exports = router;
