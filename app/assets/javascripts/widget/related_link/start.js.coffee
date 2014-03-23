window.RelatedLinks ?= {}
RelatedLinks.Views  ?= {}

RelatedLinks.Views.Start = Backbone.View.extend
  el: '.apdp-widget-container'

  events:
    'click .try-again button': 'tryAgain'

  initialize: ->
    @cacheElements()

    @hideSlider()

    @collection = new RelatedLinks.Collections.Links [], articleId: @options.articleId
    @fetchLinks()

  fetchLinks: -> @collection.fetch
    success: => @showSlider()
    error:   => @showTryAgain()

  cacheElements: ->
    @$spinner  = @$('.topcoat-spinner')
    @$slider   = @$('#related-links')
    @$tryAgain = @$('.try-again')

  hideSlider: ->
    @$slider.hide()
    @$spinner.show()

  showSlider: ->
    @$spinner.hide()
    $el = @$('.als-wrapper')

    for link in @collection.models
      new RelatedLinks.Views.Link
        el: $el
        model: link

    @$slider.show()
    @initSlider()

  showTryAgain: ->
    @$spinner.hide()
    @$tryAgain.show()

  hideTryAgain: ->
    @$tryAgain.hide()
    @$spinner.show()

  tryAgain: ->
    @hideTryAgain()
    @fetchLinks()

  initSlider: ->
    @$slider.als
      circular: 'yes'
      visible_items: 3
