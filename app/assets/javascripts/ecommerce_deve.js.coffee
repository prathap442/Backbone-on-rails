window.EcommerceDeve =
  Models: {}
  Collections: {}
  Views: {}
  Routers: {}
  initialize: -> 
    new EcommerceDeve.Routers.Categories()
    new EcommerceDeve.Routers.Products()
    Backbone.history.start();
    console.log("The backbone is initialized now")

$(document).ready ->
  EcommerceDeve.initialize()
