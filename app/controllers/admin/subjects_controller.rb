class Admin::SubjectsController < ApplicationController
  before_action :set_admin_subject, only: [:show, :edit, :update, :destroy]
  before_action :authorized?

  layout 'college_admin'

  # GET /admin/subjects
  def index
    @admin_subjects = Admin::Subject.all
  end

  # GET /admin/subjects/1
  def show
  end

  # GET /admin/subjects/new
  def new
    @admin_subject = Admin::Subject.new
  end

  # GET /admin/subjects/1/edit
  def edit
  end

  # POST /admin/subjects
  def create
    @admin_subject = Admin::Subject.new(admin_subject_params)

    if @admin_subject.save
      redirect_to @admin_subject, notice: 'Subject was successfully created.'
    else
      render :new
    end
  end

  # PATCH/PUT /admin/subjects/1
  def update
    if @admin_subject.update(admin_subject_params)
      redirect_to @admin_subject, notice: 'Subject was successfully updated.'
    else
      render :edit
    end
  end

  # DELETE /admin/subjects/1
  def destroy
    @admin_subject.destroy
    redirect_to admin_subjects_url, notice: 'Subject was successfully destroyed.'
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_admin_subject
      @admin_subject = Admin::Subject.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def admin_subject_params
      params.require(:admin_subject).permit(:course_id, :semester_id, admin_subject_forms_attributes:[:id,:name,:_destroy])
    end
end
