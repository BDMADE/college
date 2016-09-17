class Admin::DepartmentsController < ApplicationController
  before_action :set_admin_department, only: [:show, :edit, :update, :destroy]

  # GET /admin/departments
  # GET /admin/departments.json
  def index
    @admin_departments = Admin::Department.all
  end

  # GET /admin/departments/1
  # GET /admin/departments/1.json
  def show
  end

  # GET /admin/departments/new
  def new
    @admin_department = Admin::Department.new
  end

  # GET /admin/departments/1/edit
  def edit
  end

  # POST /admin/departments
  # POST /admin/departments.json
  def create
    @admin_department = Admin::Department.new(admin_department_params)

    respond_to do |format|
      if @admin_department.save
        format.html { redirect_to @admin_department, notice: 'Department was successfully created.' }
        format.json { render :show, status: :created, location: @admin_department }
      else
        format.html { render :new }
        format.json { render json: @admin_department.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /admin/departments/1
  # PATCH/PUT /admin/departments/1.json
  def update
    respond_to do |format|
      if @admin_department.update(admin_department_params)
        format.html { redirect_to @admin_department, notice: 'Department was successfully updated.' }
        format.json { render :show, status: :ok, location: @admin_department }
      else
        format.html { render :edit }
        format.json { render json: @admin_department.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /admin/departments/1
  # DELETE /admin/departments/1.json
  def destroy
    @admin_department.destroy
    respond_to do |format|
      format.html { redirect_to admin_departments_url, notice: 'Department was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_admin_department
      @admin_department = Admin::Department.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def admin_department_params
      params.require(:admin_department).permit(:name, :short_form)
    end
end
