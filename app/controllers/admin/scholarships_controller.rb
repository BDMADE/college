class Admin::ScholarshipsController < ApplicationController
  before_action :set_admin_scholarship, only: [:show, :edit, :update, :destroy]
  before_action :authorized?

  layout 'college_admin'

  # GET /admin/scholarships
  def index
    @admin_scholarships = Admin::Scholarship.all
  end

  # GET /admin/scholarships/1
  def show
  end

  # GET /admin/scholarships/new
  def new
    @admin_scholarship = Admin::Scholarship.new
  end

  # GET /admin/scholarships/1/edit
  def edit
  end

  # POST /admin/scholarships
  def create
    @admin_scholarship = Admin::Scholarship.new(admin_scholarship_params)

    if @admin_scholarship.save
      redirect_to @admin_scholarship, notice: 'Scholarship was successfully created.'
    else
      render :new
    end
  end

  # PATCH/PUT /admin/scholarships/1
  def update
    if @admin_scholarship.update(admin_scholarship_params)
      redirect_to @admin_scholarship, notice: 'Scholarship was successfully updated.'
    else
      render :edit
    end
  end

  # DELETE /admin/scholarships/1
  def destroy
    @admin_scholarship.destroy
    redirect_to admin_scholarships_url, notice: 'Scholarship was successfully destroyed.'
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_admin_scholarship
      @admin_scholarship = Admin::Scholarship.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def admin_scholarship_params
      params.require(:admin_scholarship).permit(:name, :discount, :condition, :details, :group_id)
    end
end
