class ArticlesController < ApplicationController
  layout 'application', :except => [:present_cv]
  layout 'present_cv_layout', :only => [:present_cv]
  skip_before_action :verify_authenticity_token
  def index
    @articles = Article.all
  end

  def show
    @article = Article.find(params[:id])
  end

  def new
    @article = Article.new
  end

  def create
    @article = Article.new(article_params)
    @article.user_id = current_user.id

    if @article.save
      redirect_to @article
    else
      render :new
    end
  end

  def edit
    @article = Article.find(params[:id])
  end

  def update
    @article = Article.find(params[:id])

    if @article.update(article_params)
      redirect_to @article
    else
      render :edit, status: :unprocessable_entity
    end
  end

  def destroy
    @article = Article.find(params[:id])
    @article.destroy

    redirect_to root_path, status: :see_other
  end

  def add_stuff
    @article = Article.find(params[:id])
  end

  def present_cv
    @article = Article.find(params[:id])
  end

  private
  def article_params
  params.require(:article).permit(:title, :user_id);
  end
end
