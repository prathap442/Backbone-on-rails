class EcommerceDeve.Collections.Categories extends Backbone.Collection
  
  url: '/categories.json'  
  model: EcommerceDeve.Models.Category
  parse: (response)->
    return response.categories