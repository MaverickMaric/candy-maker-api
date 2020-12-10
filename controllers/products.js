const models = require('../models')

const getAllProducts = async (request, response) => {
  const products = await models.Products.findAll({
    include: [{ model: models.Manufacturers }],
  })

  return response.send(products)
}

/* const getProductsById = async (request, response) => {
  const { id } = request.params

  const product = await models.Products.findOne({
    attributes: ['id', 'name', 'yearIntroduced'],
    where: { id },
    include: [{
      model: models.Manufacturers,
      attributes: ['id', 'name', 'country'],
    }],
  })

  return product
    ? response.send(product)
    : response.sendStatus(404)
} */

const getProductsByFuzzy = async (request, response) => {
  try {
    const { name } = request.params

    const foundProduct = await models.Products.findAll({
      where: {
        name: { [models.Op.like]: `%${name}%` },
      }
    })

    return foundProduct
      ? response.send(foundProduct)
      : response.sendStatus(404)
  } catch (error) {
    return response.status(500).send('Unable to retrieve product, please try again')
  }
}

module.exports = {
  getAllProducts,
  // getProductsById,
  getProductsByFuzzy
}
