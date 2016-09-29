class SlidersController < ApplicationController
  before_action :set_slider, only: [:show, :edit, :update, :destroy]

  # GET /sliders
  def index
    @sliders = Slider.all
  end

  # GET /sliders/1
  def show
  end

  # GET /sliders/new
  def new
    @slider = Slider.new
  end

  # GET /sliders/1/edit
  def edit
  end

  # POST /sliders
  def create
    @slider = Slider.new(slider_params)

    if @slider.save
      redirect_to @slider, notice: 'Slider was successfully created.'
    else
      render :new
    end
  end

  # PATCH/PUT /sliders/1
  def update
    if @slider.update(slider_params)
      redirect_to @slider, notice: 'Slider was successfully updated.'
    else
      render :edit
    end
  end

  # DELETE /sliders/1
  def destroy
    @slider.destroy
    redirect_to sliders_url, notice: 'Slider was successfully destroyed.'
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_slider
      @slider = Slider.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
  def slider_params

    params.require(:slider).permit(:name,:image)

  end
end
