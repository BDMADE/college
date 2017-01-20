class Admin::MiniSlidersController < ApplicationController
  before_action :set_admin_mini_slider, only: [:show, :edit, :update, :destroy]
  before_action :authorized?

  layout 'college_admin'

  # GET /admin/mini_sliders
  def index
    @admin_mini_sliders = Admin::MiniSlider.all
  end

  # GET /admin/mini_sliders/1
  def show
  end

  # GET /admin/mini_sliders/new
  def new
    @admin_mini_slider = Admin::MiniSlider.new
  end

  # GET /admin/mini_sliders/1/edit
  def edit
  end

  # POST /admin/mini_sliders
  def create
    @admin_mini_slider = Admin::MiniSlider.new(admin_mini_slider_params)

    if @admin_mini_slider.save
      redirect_to @admin_mini_slider, notice: 'Mini slider was successfully created.'
    else
      render :new
    end
  end

  # PATCH/PUT /admin/mini_sliders/1
  def update
    if @admin_mini_slider.update(admin_mini_slider_params)
      redirect_to @admin_mini_slider, notice: 'Mini slider was successfully updated.'
    else
      render :edit
    end
  end

  # DELETE /admin/mini_sliders/1
  def destroy
    @admin_mini_slider.destroy
    redirect_to admin_mini_sliders_url, notice: 'Mini slider was successfully destroyed.'
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_admin_mini_slider
      @admin_mini_slider = Admin::MiniSlider.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def admin_mini_slider_params
      params.require(:admin_mini_slider).permit(:name,:image)
    end
end
