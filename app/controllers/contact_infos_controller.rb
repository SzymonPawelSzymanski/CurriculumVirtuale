class ContactInfosController < ApplicationController
  before_action :authenticate_user!

  def index
    @user = current_user
  end
  #
  # def new
  #   @user = current_user
  #   @contact_info = @user.contact_info.new
  # end
  def create
    @user = current_user
    @contact_info = @user.create_contact_info(contact_info_params)
    if @contact_info.save
      redirect_to index_contact_infos_path
    else
      render :new
    end
  end

  def add_contact_info
    @user = current_user
    # redirect_to add_contact_info_path(@user)
  end

  def edit
    @user = current_user
    @contact_info = @user.contact_info
  end

  def update
    @user = current_user
    @contact_info = @user.contact_info

    if @contact_info.update(contact_info_params)
      redirect_to index_contact_infos_path
    else
      render :edit, status: :unprocessable_entity
    end
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
