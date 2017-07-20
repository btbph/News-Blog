class ArticlesController < ApplicationController
  def index
    @author = Author.find(params[:author_id])
    @articles = @author.articles.order(:id).page(params[:page]).per(5)
  end

  def show
    @article = Article.find(params[:id])
    @tags = @article.tags
  end

end
