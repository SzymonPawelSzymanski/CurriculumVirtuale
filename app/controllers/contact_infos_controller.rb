class ContactInfosController < ApplicationController
  before_action :authenticate_user!
  def create
    @user = current_user
    @contact_info = @user.create_contact_info(contact_info_params)
  end

  def add_contact_info
    @user = current_user
    # redirect_to add_contact_info_path(@user)
  end
  # def create
  #   @article = Article.find(params[:article_id])
  #   @experience = @article.experiences.create(experience_params)
  #   redirect_to article_path(@article)
  # end

  private
  def contact_info_params
    params.require(:contact_info).permit!
  end
end
