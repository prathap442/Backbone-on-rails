class EcommerceDeve.Routers.Products extends Backbone.Router
  routes:
    "products/:id" : "ShowProduct"
    "products" : "index"

  index: ->
    console.log("it hit this particular route")

  ShowProduct: (id)->
    console.log("This is the id of the product "+ id)  

  rootProducts: (id)->
    console.log("This is the id of he product" + String(id))
    console.log("This is the root path of the products")