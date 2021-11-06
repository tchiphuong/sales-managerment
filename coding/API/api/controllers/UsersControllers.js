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
}