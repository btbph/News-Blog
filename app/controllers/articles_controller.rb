class ArticlesController < ApplicationController
  def index
    @author = Author.page(params[:page]).per(2)
    @author = Author.find(params[:author_id])
  end

  def show
    @article = Article.find(params[:id])
    @tags = @article.tags
  end

end
