
class EcommerceDeve.Routers.Categories extends Backbone.Router
  routes:
    'categories/:id' : "showCategoryNumber" 
    'categories' :  'renderCategoriesSection'
    '' : 'rootPath'

  renderCategoriesSection: ->
    newView = new EcommerceDeve.Views.CategoriesIndex()
    $('div#root_app').html(newView.render().el)

  rootPath: ->
    alert("this is the rootpath of the woxlog")
    $('h1').html("Replacing woxlog paths")
    console.log("The root path is being rendered")

  showCategoryNumber: (id)->
    alert("The id of the category is"+ id)