class Admin::AboutsController < ApplicationController
  before_action :set_admin_about, only: [:show, :edit, :update, :destroy]
  before_action :authorized?

  layout 'college_admin'

  # GET /admin/abouts
  def index
    @admin_abouts = Admin::About.all
  end

  # GET /admin/abouts/1
  def show
  end

  # GET /admin/abouts/new
  def new
    @admin_about = Admin::About.new
  end

  # GET /admin/abouts/1/edit
  def edit
  end

  # POST /admin/abouts
  def create
    @admin_about = Admin::About.new(admin_about_params)

    if @admin_about.save
      redirect_to @admin_about, notice: 'About was successfully created.'
    else
      render :new
    end
  end

  # PATCH/PUT /admin/abouts/1
  def update
    if @admin_about.update(admin_about_params)
      redirect_to @admin_about, notice: 'About was successfully updated.'
    else
      render :edit
    end
  end

  # DELETE /admin/abouts/1
  def destroy
    @admin_about.destroy
    redirect_to admin_abouts_url, notice: 'About was successfully destroyed.'
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_admin_about
      @admin_about = Admin::About.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def admin_about_params
      params.require(:admin_about).permit(:slug, :description,:image)
    end
end
