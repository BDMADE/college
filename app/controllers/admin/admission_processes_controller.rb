class Admin::AdmissionProcessesController < ApplicationController
  before_action :set_admin_admission_process, only: [:show, :edit, :update, :destroy]
  before_action :authorized?

  layout 'college_admin'

  # GET /admin/admission_processes
  def index
    @admin_admission_processes = Admin::AdmissionProcess.all
  end

  # GET /admin/admission_processes/1
  def show
  end

  # GET /admin/admission_processes/new
  def new
    @admin_admission_process = Admin::AdmissionProcess.new
  end

  # GET /admin/admission_processes/1/edit
  def edit
  end

  # POST /admin/admission_processes
  def create
    @admin_admission_process = Admin::AdmissionProcess.new(admin_admission_process_params)

    if @admin_admission_process.save
      redirect_to @admin_admission_process, notice: 'Admission process was successfully created.'
    else
      render :new
    end
  end

  # PATCH/PUT /admin/admission_processes/1
  def update
    if @admin_admission_process.update(admin_admission_process_params)
      redirect_to @admin_admission_process, notice: 'Admission process was successfully updated.'
    else
      render :edit
    end
  end

  # DELETE /admin/admission_processes/1
  def destroy
    @admin_admission_process.destroy
    redirect_to admin_admission_processes_url, notice: 'Admission process was successfully destroyed.'
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_admin_admission_process
      @admin_admission_process = Admin::AdmissionProcess.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
  def admin_admission_process_params
    params.require(:admin_admission_process).permit(:step, :name, admin_admission_process_images_attributes:[:id,:image,:_destroy,admin_admission_process_image_details_attributes:[:id,:details,:_destroy]])
  end
end
