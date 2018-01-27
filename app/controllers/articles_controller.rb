class ArticlesController < ApplicationController

  before_action :set_article_param, only: [:edit, :update, :destroy, :show]


  def new
    @article = Article.new

  end

  def create
    @article = Article.new(article_params)

    if @article.save
      flash[:notice] = 'Your article has been created'
      redirect_to article_path(@article)
    else
      render 'new'
    end
  end

  def index
    @allarticles = Article.all
  end

  def show
  end

  def edit
  end

  def update
    if @article.update(article_params)
      flash[:notice] = "Article has been successfully updated"
      redirect_to article_path(@article)
    else
      render 'edit'
    end
  end

  def destroy
    @article.destroy!
    flash[:notice] = "article was successfuly deleted!"
    redirect_to articles_path
  end

  private

  def article_params
    params.require(:article).permit(:title, :description)
  end

  def set_article_param
    @article = Article.find(params[:id])
  end


end