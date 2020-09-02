
class EcommerceDeve.Routers.Categories extends Backbone.Router
  routes:
    'categories' :  'renderCategoriesSection'
    '' : 'rootPath' 

  renderCategoriesSection: ->
    newView = new EcommerceDeve.Views.CategoriesIndex()
    $('div#root_app').html(newView.render().el)

  rootPath: ->
    $('h1').html("Replacing woxlog paths")
    console.log("The root path is being rendered")
