class Admin::SemestersController < ApplicationController
  before_action :set_admin_semester, only: [:show, :edit, :update, :destroy]

  # GET /admin/semesters
  # GET /admin/semesters.json
  def index
    @admin_semesters = Admin::Semester.all
  end

  # GET /admin/semesters/1
  # GET /admin/semesters/1.json
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
  # POST /admin/semesters.json
  def create
    @admin_semester = Admin::Semester.new(admin_semester_params)

    respond_to do |format|
      if @admin_semester.save
        format.html { redirect_to @admin_semester, notice: 'Semester was successfully created.' }
        format.json { render :show, status: :created, location: @admin_semester }
      else
        format.html { render :new }
        format.json { render json: @admin_semester.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /admin/semesters/1
  # PATCH/PUT /admin/semesters/1.json
  def update
    respond_to do |format|
      if @admin_semester.update(admin_semester_params)
        format.html { redirect_to @admin_semester, notice: 'Semester was successfully updated.' }
        format.json { render :show, status: :ok, location: @admin_semester }
      else
        format.html { render :edit }
        format.json { render json: @admin_semester.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /admin/semesters/1
  # DELETE /admin/semesters/1.json
  def destroy
    @admin_semester.destroy
    respond_to do |format|
      format.html { redirect_to admin_semesters_url, notice: 'Semester was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_admin_semester
      @admin_semester = Admin::Semester.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def admin_semester_params
      params.require(:admin_semester).permit(:name, :short_form)
    end
end
