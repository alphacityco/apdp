class Widget::HotelController < ApplicationController
  layout false
  after_filter :allow_crossdomain

  def index
    respond_to do |format|
      # deliver the bootstrapping Javascript
      @view_url  = widget_hotels_url format: 'html'
      @container = ".apdp-widget"
      format.js { render "widget/bootstrap", format: 'js' }

      # shows the widget generator form for the client
      format.html
    end
  end

end
