class Admin::AdmissionFeesStatusesController < ApplicationController
  before_action :set_admin_admission_fees_status, only: [:show, :edit, :update, :destroy]
  before_action :authorized?

  layout 'college_admin'

  # GET /admin/admission_fees_statuses
  def index
    @admin_admission_fees_statuses = Admin::AdmissionFeesStatus.all
  end

  # GET /admin/admission_fees_statuses/1
  def show
  end

  # GET /admin/admission_fees_statuses/new
  def new
    @admin_admission_fees_status = Admin::AdmissionFeesStatus.new
  end

  # GET /admin/admission_fees_statuses/1/edit
  def edit
  end

  # POST /admin/admission_fees_statuses
  def create
    @admin_admission_fees_status = Admin::AdmissionFeesStatus.new(admin_admission_fees_status_params)

    if @admin_admission_fees_status.save
      redirect_to @admin_admission_fees_status, notice: 'Admission fees status was successfully created.'
    else
      render :new
    end
  end

  # PATCH/PUT /admin/admission_fees_statuses/1
  def update
    if @admin_admission_fees_status.update(admin_admission_fees_status_params)
      redirect_to @admin_admission_fees_status, notice: 'Admission fees status was successfully updated.'
    else
      render :edit
    end
  end

  # DELETE /admin/admission_fees_statuses/1
  def destroy
    @admin_admission_fees_status.destroy
    redirect_to admin_admission_fees_statuses_url, notice: 'Admission fees status was successfully destroyed.'
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_admin_admission_fees_status
      @admin_admission_fees_status = Admin::AdmissionFeesStatus.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def admin_admission_fees_status_params
      params.require(:admin_admission_fees_status).permit(:name, :value)
    end
end
