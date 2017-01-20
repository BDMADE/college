class Admin::VideosController < ApplicationController
  before_action :set_admin_video, only: [:show, :edit, :update, :destroy]
  before_action :authorized?

  layout 'college_admin'

  # GET /admin/videos
  def index
    @admin_videos = Admin::Video.all
  end

  # GET /admin/videos/1
  def show
  end

  # GET /admin/videos/new
  def new
    @admin_video = Admin::Video.new
  end

  # GET /admin/videos/1/edit
  def edit
  end

  # POST /admin/videos
  def create
    @admin_video = Admin::Video.new(admin_video_params)

    if @admin_video.save
      redirect_to @admin_video, notice: 'Video was successfully created.'
    else
      render :new
    end
  end

  # PATCH/PUT /admin/videos/1
  def update
    if @admin_video.update(admin_video_params)
      redirect_to @admin_video, notice: 'Video was successfully updated.'
    else
      render :edit
    end
  end

  # DELETE /admin/videos/1
  def destroy
    @admin_video.destroy
    redirect_to admin_videos_url, notice: 'Video was successfully destroyed.'
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_admin_video
      @admin_video = Admin::Video.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def admin_video_params
      params.require(:admin_video).permit(:name, :link, :details)
    end
end
