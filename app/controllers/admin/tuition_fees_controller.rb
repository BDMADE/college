class Admin::TuitionFeesController < ApplicationController
  before_action :set_admin_tuition_fee, only: [:show, :edit, :update, :destroy]
  before_action :authorized?

  layout 'college_admin'

  # GET /admin/tuition_fees
  def index
    @admin_tuition_fees = Admin::TuitionFee.all
  end

  # GET /admin/tuition_fees/1
  def show
  end

  # GET /admin/tuition_fees/new
  def new
    @admin_tuition_fee = Admin::TuitionFee.new
  end

  # GET /admin/tuition_fees/1/edit
  def edit
  end

  # POST /admin/tuition_fees
  def create
    @admin_tuition_fee = Admin::TuitionFee.new(admin_tuition_fee_params)

    if @admin_tuition_fee.save
      redirect_to @admin_tuition_fee, notice: 'Tuition fee was successfully created.'
    else
      render :new
    end
  end

  # PATCH/PUT /admin/tuition_fees/1
  def update
    if @admin_tuition_fee.update(admin_tuition_fee_params)
      redirect_to @admin_tuition_fee, notice: 'Tuition fee was successfully updated.'
    else
      render :edit
    end
  end

  # DELETE /admin/tuition_fees/1
  def destroy
    @admin_tuition_fee.destroy
    redirect_to admin_tuition_fees_url, notice: 'Tuition fee was successfully destroyed.'
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_admin_tuition_fee
      @admin_tuition_fee = Admin::TuitionFee.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def admin_tuition_fee_params
      params.require(:admin_tuition_fee).permit(:name, :payable, :group_id,admin_admission_fees_status_ids: [])
    end
end
