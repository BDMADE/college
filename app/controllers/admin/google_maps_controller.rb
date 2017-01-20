class Admin::GoogleMapsController < ApplicationController
  before_action :set_admin_google_map, only: [:show, :edit, :update, :destroy]
  before_action :authorized?

  layout 'college_admin'

  # GET /admin/google_maps
  def index
    @admin_google_maps = Admin::GoogleMap.all
  end

  # GET /admin/google_maps/1
  def show
  end

  # GET /admin/google_maps/new
  def new
    @admin_google_map = Admin::GoogleMap.new
  end

  # GET /admin/google_maps/1/edit
  def edit
  end

  # POST /admin/google_maps
  def create
    @admin_google_map = Admin::GoogleMap.new(admin_google_map_params)

    if @admin_google_map.save
      redirect_to @admin_google_map, notice: 'Google map was successfully created.'
    else
      render :new
    end
  end

  # PATCH/PUT /admin/google_maps/1
  def update
    if @admin_google_map.update(admin_google_map_params)
      redirect_to @admin_google_map, notice: 'Google map was successfully updated.'
    else
      render :edit
    end
  end

  # DELETE /admin/google_maps/1
  def destroy
    @admin_google_map.destroy
    redirect_to admin_google_maps_url, notice: 'Google map was successfully destroyed.'
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_admin_google_map
      @admin_google_map = Admin::GoogleMap.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def admin_google_map_params
      params.require(:admin_google_map).permit(:name, :latitude, :longitude, :google_api_key)
    end
end
