class SkillsController < ApplicationController
  def new
    @article = Article.find(params[:article_id])
  end
  def create
    @article = Article.find(params[:article_id])
    @skill = @article.skills.create(skill_params)
    redirect_to article_path(@article)
  end
  def edit
    @article = Article.find(params[:article_id])
    @skill = @article.skills.create(skill_params)
  end
  def destroy
    @article = Article.find(params[:article_id])
    @skill = @article.skills.find(params[:id])
    @skill.destroy
    redirect_to article_path(@article), status: :see_other
  end

  private
  def skill_params
    params.require(:skill).permit!
  end
end
