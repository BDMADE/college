class Admin::SemestersController < ApplicationController
  before_action :set_admin_semester, only: [:show, :edit, :update, :destroy]
  before_action :authorized?

  layout 'college_admin'

  # GET /admin/semesters
  def index
    @admin_semesters = Admin::Semester.all
  end

  # GET /admin/semesters/1
  def show
  end

  # GET /admin/semesters/new
  def new
    @admin_semester = Admin::Semester.new
  end

  # GET /admin/semesters/1/edit
  def edit
  end

  # POST /admin/semesters
  def create
    @admin_semester = Admin::Semester.new(admin_semester_params)

    if @admin_semester.save
      redirect_to @admin_semester, notice: 'Semester was successfully created.'
    else
      render :new
    end
  end

  # PATCH/PUT /admin/semesters/1
  def update
    if @admin_semester.update(admin_semester_params)
      redirect_to @admin_semester, notice: 'Semester was successfully updated.'
    else
      render :edit
    end
  end

  # DELETE /admin/semesters/1
  def destroy
    @admin_semester.destroy
    redirect_to admin_semesters_url, notice: 'Semester was successfully destroyed.'
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_admin_semester
      @admin_semester = Admin::Semester.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def admin_semester_params
      params.require(:admin_semester).permit(:name, :short_form)
    end
end
