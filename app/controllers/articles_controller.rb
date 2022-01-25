class ArticlesController < ApplicationController
  def show
    #debugger #byebug in rails 6 - look at gemfile to determine
    @article = Article.find(params[:id])
  end

  def index
    @articles = Article.all
  end
end