class Admin::SlidersController < ApplicationController
  before_action :set_admin_slider, only: [:show, :edit, :update, :destroy]
  before_action :authorized?

  layout 'college_admin'

  # GET /admin/sliders
  def index
    @admin_sliders = Admin::Slider.all
  end

  # GET /admin/sliders/1
  def show
  end

  # GET /admin/sliders/new
  def new
    @admin_slider = Admin::Slider.new
  end

  # GET /admin/sliders/1/edit
  def edit
  end

  # POST /admin/sliders
  def create
    @admin_slider = Admin::Slider.new(admin_slider_params)

    if @admin_slider.save
      redirect_to @admin_slider, notice: 'Slider was successfully created.'
    else
      render :new
    end
  end

  # PATCH/PUT /admin/sliders/1
  def update
    if @admin_slider.update(admin_slider_params)
      redirect_to @admin_slider, notice: 'Slider was successfully updated.'
    else
      render :edit
    end
  end

  # DELETE /admin/sliders/1
  def destroy
    @admin_slider.destroy
    redirect_to admin_sliders_url, notice: 'Slider was successfully destroyed.'
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_admin_slider
      @admin_slider = Admin::Slider.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def admin_slider_params
      params.require(:admin_slider).permit(:name, :caption_1, :caption_2, :image)
    end
end
