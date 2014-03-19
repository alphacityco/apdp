class Api::MainController < ApplicationController
  rescue_from ActiveRecord::RecordNotFound, with: :not_found

  def not_found(exception)
    render json: { error: exception.message }, status: 404
  end

end