"use strict";
module.exports = function (app) {
    let productsCtrl = require("./controllers/ProductsController");
    let categoriesCtrl = require("./controllers/CategoriesControllers");
    let brandsCtrl = require("./controllers/BrandsControllers");
    let usersCtrl = require("./controllers/UsersControllers");

    // products
    app.route("/products")
        .get(productsCtrl.get)
        .post(productsCtrl.store);

    app.route("/products/:code")
        .get(productsCtrl.detail)
        .put(productsCtrl.update)
        .delete(productsCtrl.delete);

    // categories
    app.route("/categories")
        .get(categoriesCtrl.get)
        .post(categoriesCtrl.store);

    app.route("/categories/:code")
        .get(categoriesCtrl.detail)
        .put(categoriesCtrl.update)
        .delete(categoriesCtrl.delete);

    // brands
    app.route("/brands")
        .get(brandsCtrl.get)
        .post(brandsCtrl.store);

    app.route("/brands/:code")
        .get(brandsCtrl.detail)
        .put(brandsCtrl.update)
        .delete(brandsCtrl.delete);


    //user
    // app.route("/login")
    //     .post(usersCtrl.get);

    // app.route("/users")
    // .get(usersCtrl.get)
    // .post(usersCtrl.store);

    // app.route("/users/:code")
    // .get(usersCtrl.detail)
    // .put(usersCtrl.update)
    // .delete(usersCtrl.delete);

};
