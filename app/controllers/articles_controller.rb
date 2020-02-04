class ArticlesController < ApplicationController
  def index
    @articles = Article.all
  end

  def show
    @article = Article.find(params[:id])
  end

  def new
    @article = Article.new
    #byebug
  end

  def create
    @article = Article.create(title: params[:article][:title], description: params[:article][:description])
    redirect_to article_path(@article) # "/articles/:id"
    #redirect_to edit_article_path(@article) # "/articles/:id/edit"
  end

  # add edit and update methods here

  def edit
    @article = Article.find(params[:id])
  end
  
  def update
    #byebug
      @article = Article.find(params[:id])
      @article.update(title: params[:article][:title], description: params[:article][:description])
      redirect_to article_path(@article)
  end

end
