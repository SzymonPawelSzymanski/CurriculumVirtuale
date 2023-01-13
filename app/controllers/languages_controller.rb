class LanguagesController < ApplicationController
  def new
    @article = Article.find(params[:article_id])
  end
  def create
    @article = Article.find(params[:article_id])
    @language = @article.languages.create(language_params)
    redirect_to article_path(@article)
  end
  def edit
    @article = Article.find(params[:article_id])
    @language = @article.languages.create(language_params)
  end
  def destroy
    @article = Article.find(params[:article_id])
    @language = @article.languages.find(params[:id])
    @language.destroy
    redirect_to article_path(@article), status: :see_other
  end

  private
  def language_params
    params.require(:language).permit!
  end
end
