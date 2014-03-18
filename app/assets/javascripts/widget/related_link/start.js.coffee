window.RelatedLinks ?= {}
RelatedLinks.Views  ?= {}

RelatedLinks.Views.Start = Backbone.View.extend

  initialize: ->
    @cacheElements()

    @render()

  cacheElements: ->
    @$el = $('.apdp-widget-container')
    @$spinner = @$('.topcoat-spinner')
    @$slider  = @$('#related-links')

  initSlider: ->
    @$slider.als
      circular: "yes"
      visible_items: 3

  render: ->
    @$spinner.show()

    links = new RelatedLinks.Collections.Links [], articleId: @options.articleId

    links.fetch success: => @showSlider()

  showSlider: ->
    @$spinner.hide()

    @$slider.show()
    @initSlider()
