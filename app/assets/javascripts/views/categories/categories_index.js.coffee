class EcommerceDeve.Views.CategoriesIndex extends Backbone.View
  template : JST['categories/index']
  events:
    'click': 'say_hello'

  initialize: ->
    @categories_collection = new EcommerceDeve.Collections.Categories()
    self = @
    @categories_collection.fetch(
      success: (categories_results, options)->
        self.categories_collection.reset(options.categories)
        return categories_results
    )
    @categories_collection.on('reset',@render, this)

  render : ->
    # @ here implies to 'this' object
    # $(this) is the output for the $(@)
    # console.log($(this.el)) is the output for the console.log($(@el))
    debugger
    $(@el).html(@template(collection: @categories_collection))
    return @

  say_hello: ->
    console.log("saying hello")