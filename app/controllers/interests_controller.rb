class InterestsController < ApplicationController
  def new
    @article = Article.find(params[:article_id])
  end
  def create
    @article = Article.find(params[:article_id])
    @interest = @article.interests.create(interest_params)
    redirect_to article_path(@article)
  end
  def edit
    @article = Article.find(params[:article_id])
    @interest = @article.interests.create(interest_params)
  end
  def destroy
    @article = Article.find(params[:article_id])
    @interest = @article.interests.find(params[:id])
    @interest.destroy
    redirect_to article_path(@article), status: :see_other
  end

  private
  def interest_params
    params.require(:interest).permit!
  end
end
