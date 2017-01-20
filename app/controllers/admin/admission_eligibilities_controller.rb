class Admin::AdmissionEligibilitiesController < ApplicationController
  before_action :set_admin_admission_eligibility, only: [:show, :edit, :update, :destroy]
  before_action :authorized?

  layout 'college_admin'

  # GET /admin/admission_eligibilities
  def index
    @admin_admission_eligibilities = Admin::AdmissionEligibility.all
  end

  # GET /admin/admission_eligibilities/1
  def show
  end

  # GET /admin/admission_eligibilities/new
  def new
    @admin_admission_eligibility = Admin::AdmissionEligibility.new
  end

  # GET /admin/admission_eligibilities/1/edit
  def edit
  end

  # POST /admin/admission_eligibilities
  def create
    @admin_admission_eligibility = Admin::AdmissionEligibility.new(admin_admission_eligibility_params)

    if @admin_admission_eligibility.save
      redirect_to @admin_admission_eligibility, notice: 'Admission eligibility was successfully created.'
    else
      render :new
    end
  end

  # PATCH/PUT /admin/admission_eligibilities/1
  def update
    if @admin_admission_eligibility.update(admin_admission_eligibility_params)
      redirect_to @admin_admission_eligibility, notice: 'Admission eligibility was successfully updated.'
    else
      render :edit
    end
  end

  # DELETE /admin/admission_eligibilities/1
  def destroy
    @admin_admission_eligibility.destroy
    redirect_to admin_admission_eligibilities_url, notice: 'Admission eligibility was successfully destroyed.'
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_admin_admission_eligibility
      @admin_admission_eligibility = Admin::AdmissionEligibility.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def admin_admission_eligibility_params
      params.require(:admin_admission_eligibility).permit(:name, :description)
    end
end
