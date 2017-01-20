class Admin::PostalTypesController < ApplicationController
  before_action :set_admin_postal_type, only: [:show, :edit, :update, :destroy]
  before_action :authorized?

  layout 'college_admin'

  # GET /admin/postal_types
  def index
    @admin_postal_types = Admin::PostalType.all
  end

  # GET /admin/postal_types/1
  def show
  end

  # GET /admin/postal_types/new
  def new
    @admin_postal_type = Admin::PostalType.new
  end

  # GET /admin/postal_types/1/edit
  def edit
  end

  # POST /admin/postal_types
  def create
    @admin_postal_type = Admin::PostalType.new(admin_postal_type_params)

    if @admin_postal_type.save
      redirect_to @admin_postal_type, notice: 'Postal type was successfully created.'
    else
      render :new
    end
  end

  # PATCH/PUT /admin/postal_types/1
  def update
    if @admin_postal_type.update(admin_postal_type_params)
      redirect_to @admin_postal_type, notice: 'Postal type was successfully updated.'
    else
      render :edit
    end
  end

  # DELETE /admin/postal_types/1
  def destroy
    @admin_postal_type.destroy
    redirect_to admin_postal_types_url, notice: 'Postal type was successfully destroyed.'
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_admin_postal_type
      @admin_postal_type = Admin::PostalType.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def admin_postal_type_params
      params.require(:admin_postal_type).permit(:name, :icon_id)
    end
end
