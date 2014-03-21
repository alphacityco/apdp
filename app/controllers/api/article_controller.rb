class Api::ArticleController < Api::MainController
  after_filter :allow_crossdomain

  def show
    @article = Article.find_by_src_id params[:id]
  end

  def related_links
    article_id = params[:id].to_s

    if article_id.is_number?
      @article = Article.find_by_src_id article_id
    else
      @article = Article.find_by_slug article_id
    end
  end

end
