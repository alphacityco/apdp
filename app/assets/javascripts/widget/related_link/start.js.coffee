window.RelatedLinks ?= {}
RelatedLinks.Views  ?= {}

RelatedLinks.Views.Start = Backbone.View.extend
  el: '.apdp-widget-container'

  initialize: ->
    @cacheElements()

    @hideSlider()

    @collection = new RelatedLinks.Collections.Links [], articleId: @options.articleId
    @fetchLinks()

  fetchLinks: -> @collection.fetch
    success: => @showSlider()
    error:   => @showTryAgainMessage()

  cacheElements: ->
    @$spinner = @$('.topcoat-spinner')
    @$slider  = @$('#related-links')

  hideSlider: ->
    @$spinner.show()
    @$slider.hide()

  showSlider: ->
    @$spinner.hide()
    $el = @$('.als-wrapper')

    for link in @collection.models
      new RelatedLinks.Views.Link
        el: $el
        model: link

    @$slider.show()
    @initSlider()

  showTryAgainMessage: ->


  initSlider: ->
    @$slider.als
      circular: 'yes'
      visible_items: 3
