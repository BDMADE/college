class Admin::CoursesController < ApplicationController
  before_action :set_admin_course, only: [:show, :edit, :update, :destroy]
  before_action :authorized?

  layout 'college_admin'

  # GET /admin/courses
  def index
    @admin_courses = Admin::Course.all
  end

  # GET /admin/courses/1
  def show
  end

  # GET /admin/courses/new
  def new
    @admin_course = Admin::Course.new
  end

  # GET /admin/courses/1/edit
  def edit
  end

  # POST /admin/courses
  def create
    @admin_course = Admin::Course.new(admin_course_params)

    if @admin_course.save
      redirect_to @admin_course, notice: 'Course was successfully created.'
    else
      render :new
    end
  end

  # PATCH/PUT /admin/courses/1
  def update
    if @admin_course.update(admin_course_params)
      redirect_to @admin_course, notice: 'Course was successfully updated.'
    else
      render :edit
    end
  end

  # DELETE /admin/courses/1
  def destroy
    @admin_course.destroy
    redirect_to admin_courses_url, notice: 'Course was successfully destroyed.'
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_admin_course
      @admin_course = Admin::Course.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def admin_course_params
      params.require(:admin_course).permit(:name, :description, :image)
    end
end
