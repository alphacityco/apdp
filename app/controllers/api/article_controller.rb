class Api::ArticleController < ApplicationController

  def hotels
    @article = Article.find_by_src_id params[:src_id]
  end

end
