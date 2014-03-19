class Widget::RelatedLinkController < ApplicationController
  layout false
  after_filter :allow_crossdomain

  def index
    respond_to do |format|
      # deliver the bootstrapping Javascript
      @view_url  = widget_related_link_url format: 'html'
      @container = ".apdp-widget"
      format.js { render "widget/bootstrap", format: 'js' }

      # shows the widget slider for the client
      format.html
      gon.HOST_URL = ENV['HOST_URL']
    end
  end

end
