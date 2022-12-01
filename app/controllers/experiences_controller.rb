class ExperiencesController < ApplicationController
  def create
    @article = Article.find(params[:article_id])
    @experience = @article.experiences.create(experience_params)
    redirect_to article_path(@article)
  end

  def destroy
    @article = Article.find(params[:article_id])
    @experience = @article.experiences.find(params[:id])
    @experience.destroy
    redirect_to article_path(@article), status: :see_other
  end

  private
  def experience_params
    params.require(:experience).permit!
  end
end
