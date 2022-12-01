class DutiesController < ApplicationController
  def create
    @article = Article.find(params[:article_id])
    @experience = @article.experiences.find(params[:experience_id])
    @duty = @experience.create(duty_params)
    redirect_to article_path(@article)
    binding.pry
  end

  def destroy
    @article = Article.find(params[:article_id])
    @experience = @article.experiences.find(params[:experience_id])
    @duty = @experience.find(params[:duty_id])
    @duty.destroy
    redirect_to article_path(@article), status: :see_other
  end

  private
  def duty_params
    params.require(:duty).permit!
  end
end
