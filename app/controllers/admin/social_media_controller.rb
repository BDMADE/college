class Admin::SocialMediaController < ApplicationController
  before_action :set_admin_social_medium, only: [:show, :edit, :update, :destroy]
  before_action :authorized?

  layout 'college_admin'

  # GET /admin/social_media
  def index
    @admin_social_media = Admin::SocialMedium.all
  end

  # GET /admin/social_media/1
  def show
  end

  # GET /admin/social_media/new
  def new
    @admin_social_medium = Admin::SocialMedium.new
  end

  # GET /admin/social_media/1/edit
  def edit
  end

  # POST /admin/social_media
  def create
    @admin_social_medium = Admin::SocialMedium.new(admin_social_medium_params)

    if @admin_social_medium.save
      redirect_to @admin_social_medium, notice: 'Social medium was successfully created.'
    else
      render :new
    end
  end

  # PATCH/PUT /admin/social_media/1
  def update
    if @admin_social_medium.update(admin_social_medium_params)
      redirect_to @admin_social_medium, notice: 'Social medium was successfully updated.'
    else
      render :edit
    end
  end

  # DELETE /admin/social_media/1
  def destroy
    @admin_social_medium.destroy
    redirect_to admin_social_media_url, notice: 'Social medium was successfully destroyed.'
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_admin_social_medium
      @admin_social_medium = Admin::SocialMedium.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def admin_social_medium_params
      params.require(:admin_social_medium).permit(:name, :link, :icon_id)
    end
end
