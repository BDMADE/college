class Admin::QuickLinksController < ApplicationController
  before_action :set_admin_quick_link, only: [:show, :edit, :update, :destroy]
  before_action :authorized?

  layout 'college_admin'

  # GET /admin/quick_links
  def index
    @admin_quick_links = Admin::QuickLink.all
  end

  # GET /admin/quick_links/1
  def show
  end

  # GET /admin/quick_links/new
  def new
    @admin_quick_link = Admin::QuickLink.new
  end

  # GET /admin/quick_links/1/edit
  def edit
  end

  # POST /admin/quick_links
  def create
    @admin_quick_link = Admin::QuickLink.new(admin_quick_link_params)

    if @admin_quick_link.save
      redirect_to @admin_quick_link, notice: 'Quick link was successfully created.'
    else
      render :new
    end
  end

  # PATCH/PUT /admin/quick_links/1
  def update
    if @admin_quick_link.update(admin_quick_link_params)
      redirect_to @admin_quick_link, notice: 'Quick link was successfully updated.'
    else
      render :edit
    end
  end

  # DELETE /admin/quick_links/1
  def destroy
    @admin_quick_link.destroy
    redirect_to admin_quick_links_url, notice: 'Quick link was successfully destroyed.'
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_admin_quick_link
      @admin_quick_link = Admin::QuickLink.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def admin_quick_link_params
      params.require(:admin_quick_link).permit(:name, :link)
    end
end
