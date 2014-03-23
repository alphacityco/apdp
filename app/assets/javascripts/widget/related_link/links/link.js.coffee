window.RelatedLinks ?= {}
RelatedLinks.Models ?= {}

RelatedLinks.Models.Link = Backbone.Model.extend

  initialize: ->
    desc = @get('self_description') or @get('relation_description')

    @set 'ellipsized_description', if desc.length <= 140 then desc else "#{desc.substring(0, 140)}..."
