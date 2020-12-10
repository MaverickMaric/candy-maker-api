/* eslint-disable no-console */
const express = require('express')
const { getAllManufacturers, /* getManufacturerById,*/ getManufacturerByFuzzy } = require('./controllers/manufacturers')
const { getAllProducts, /* getProductsById,*/ getProductsByFuzzy } = require('./controllers/products')
const port = 1341

const app = express()

app.get('/manufacturers/', getAllManufacturers)
// app.get('/manufacturers/:id', getManufacturerById)
app.get('/manufacturers/:name', getManufacturerByFuzzy)

app.get('/products/', getAllProducts)
// app.get('/products/:id', getProductsById)
app.get('/products/:name', getProductsByFuzzy)

app.listen(port, () => {
  console.log(`Listening on port ${port}...`)
})
