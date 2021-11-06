'use strict'

const util = require('util')
const mysql = require('mysql')
const db = require('./../database')

module.exports = {
    get: (req, res) => {
        let sql = 'SELECT * FROM ms_products'
        db.query(sql, (err, response) => {
            if (err) throw err
            res.json(response)
        })
    },
    detail: (req, res) => {
        let sql = 'SELECT * FROM ms_products WHERE code = ?'
        db.query(sql, [req.params.code], (err, response) => {
            if (err) throw err
            res.json(response[0])
            console.log("Error: " + err);
        })
    },
    update: (req, res) => {
        let data = req.body;
        let productId = req.params.productId;
        let sql = 'UPDATE ms_products SET ? WHERE code = ?'
        db.query(sql, [data, productId], (err, response) => {
            if (err) throw err
            res.json({message: 'Update success!'})
        })
    },
    store: (req, res) => {
        let data = req.body;
        let sql = 'INSERT INTO ms_products SET ?'
        db.query(sql, [data], (err, response) => {
            if (err) throw err
            res.json({message: 'Insert success!'})
        })
    },
    delete: (req, res) => {
        let sql = 'DELETE FROM ms_products WHERE code = ?'
        db.query(sql, [req.params.productId], (err, response) => {
            if (err) throw err
            res.json({message: 'Delete success!'})
        })
    }
}