window.RelatedLinks      ?= {}
RelatedLinks.Collections ?= {}

RelatedLinks.Collections.Links = Backbone.Collection.extend
  model: RelatedLinks.Models.Link
  host: gon.HOST_URL

  initialize: (models, options) ->
    @articleId = options.articleId

  url: ->
    "#{@host}/api/article/#{@articleId}/related_links"
