class Admin::PostalsController < ApplicationController
  before_action :set_admin_postal, only: [:show, :edit, :update, :destroy]
  before_action :authorized?

  layout 'college_admin'

  # GET /admin/postals
  def index
    @admin_postals = Admin::Postal.all
  end

  # GET /admin/postals/1
  def show
  end

  # GET /admin/postals/new
  def new
    @admin_postal = Admin::Postal.new
  end

  # GET /admin/postals/1/edit
  def edit
  end

  # POST /admin/postals
  def create
    @admin_postal = Admin::Postal.new(admin_postal_params)

    if @admin_postal.save
      redirect_to @admin_postal, notice: 'Postal was successfully created.'
    else
      render :new
    end
  end

  # PATCH/PUT /admin/postals/1
  def update
    if @admin_postal.update(admin_postal_params)
      redirect_to @admin_postal, notice: 'Postal was successfully updated.'
    else
      render :edit
    end
  end

  # DELETE /admin/postals/1
  def destroy
    @admin_postal.destroy
    redirect_to admin_postals_url, notice: 'Postal was successfully destroyed.'
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_admin_postal
      @admin_postal = Admin::Postal.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def admin_postal_params
      params.require(:admin_postal).permit(:name, :details, :type_id)
    end
end
