class ArticlesController < ApplicationController

  def new
    @article = Article.new

    render 'new'

  end

  def index
    @articles = Article.all

  end

  def show
    @article = Article.find(params[:id])
    @comments = @article.comments_ordered
    @comment = Comment.new

    if @article
      render 'show'
    else
      redirect_to root_path
    end
  end

  def create
    @article = Article.new(params[:article])

    if @article.save
      redirect_to root_path
    else
      render :action => "new"
    end

  end




end