window.RelatedLinks ?= {}
RelatedLinks.Views  ?= {}

RelatedLinks.Views.Link = Backbone.View.extend
  template: HandlebarsTemplates['widget/related_link/links/link_jst']

  initialize: ->
    @render()

  render: ->
    $template = @template @model.attributes

    @$el.append $template
