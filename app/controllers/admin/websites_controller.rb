class Admin::WebsitesController < ApplicationController
  before_action :set_admin_website, only: [:show, :edit, :update, :destroy]
  before_action :authorized?

  layout 'college_admin'

  # GET /admin/websites
  def index
    @admin_websites = Admin::Website.all
  end

  # GET /admin/websites/1
  def show
  end

  # GET /admin/websites/new
  def new
    @admin_website = Admin::Website.new
  end

  # GET /admin/websites/1/edit
  def edit
  end

  # POST /admin/websites
  def create
    @admin_website = Admin::Website.new(admin_website_params)

    if @admin_website.save
      redirect_to @admin_website, notice: 'Website was successfully created.'
    else
      render :new
    end
  end

  # PATCH/PUT /admin/websites/1
  def update
    if @admin_website.update(admin_website_params)
      redirect_to @admin_website, notice: 'Website was successfully updated.'
    else
      render :edit
    end
  end

  # DELETE /admin/websites/1
  def destroy
    @admin_website.destroy
    redirect_to admin_websites_url, notice: 'Website was successfully destroyed.'
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_admin_website
      @admin_website = Admin::Website.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def admin_website_params
      params.require(:admin_website).permit(:name, :logo, :favicon, :details)
    end
end
