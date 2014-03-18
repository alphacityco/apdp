window.RelatedLinks      ?= {}
RelatedLinks.Collections ?= {}

RelatedLinks.Collections.Links = Backbone.Collection.extend
  model: RelatedLinks.Models.Link

  initialize: (models, options) ->
    @articleId = options.articleId

  url: ->
    "http://localhost:3000/api/article/#{@articleId}/related_links"
