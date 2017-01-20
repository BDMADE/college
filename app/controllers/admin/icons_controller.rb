class Admin::IconsController < ApplicationController
  before_action :set_admin_icon, only: [:show, :edit, :update, :destroy]
  before_action :authorized?

  layout 'college_admin'

  # GET /admin/icons
  def index
    @admin_icons = Admin::Icon.all
  end

  # GET /admin/icons/1
  def show
  end

  # GET /admin/icons/new
  def new
    @admin_icon = Admin::Icon.new
  end

  # GET /admin/icons/1/edit
  def edit
  end

  # POST /admin/icons
  def create
    @admin_icon = Admin::Icon.new(admin_icon_params)

    if @admin_icon.save
      redirect_to @admin_icon, notice: 'Icon was successfully created.'
    else
      render :new
    end
  end

  # PATCH/PUT /admin/icons/1
  def update
    if @admin_icon.update(admin_icon_params)
      redirect_to @admin_icon, notice: 'Icon was successfully updated.'
    else
      render :edit
    end
  end

  # DELETE /admin/icons/1
  def destroy
    @admin_icon.destroy
    redirect_to admin_icons_url, notice: 'Icon was successfully destroyed.'
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_admin_icon
      @admin_icon = Admin::Icon.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def admin_icon_params
      params.require(:admin_icon).permit(:name, :icon)
    end
end
