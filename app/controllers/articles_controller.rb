class ArticlesController < ApplicationController
  def show
    #debugger #byebug in rails 6 - look at gemfile to determine
    @article = Article.find(params[:id])
  end

  def index
    @articles = Article.all
  end

  def new

  end

  def create
    @article = Article.new(params.require(:article).permit(:title, :description))
    @article.save
    redirect_to @article
  end
end