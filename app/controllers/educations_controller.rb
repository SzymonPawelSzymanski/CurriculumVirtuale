class EducationsController < ApplicationController
  def new
    @article = Article.find(params[:article_id])
  end
  def create
    @article = Article.find(params[:article_id])
    @education = @article.educations.create(education_params)
    redirect_to article_path(@article)
  end

  def edit
    @article = Article.find(params[:article_id])
    @education = @article.educations.find(params[:id])
  end

  def destroy
    @article = Article.find(params[:article_id])
    @education = @article.educations.find(params[:id])
    @education.destroy
    redirect_to article_path(@article), status: :see_other
  end

  private
  def education_params
    params.require(:education).permit!
  end
end
