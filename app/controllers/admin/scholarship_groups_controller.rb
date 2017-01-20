class Admin::ScholarshipGroupsController < ApplicationController
  before_action :set_admin_scholarship_group, only: [:show, :edit, :update, :destroy]
  before_action :authorized?

  layout 'college_admin'

  # GET /admin/scholarship_groups
  def index
    @admin_scholarship_groups = Admin::ScholarshipGroup.all
  end

  # GET /admin/scholarship_groups/1
  def show
  end

  # GET /admin/scholarship_groups/new
  def new
    @admin_scholarship_group = Admin::ScholarshipGroup.new
  end

  # GET /admin/scholarship_groups/1/edit
  def edit
  end

  # POST /admin/scholarship_groups
  def create
    @admin_scholarship_group = Admin::ScholarshipGroup.new(admin_scholarship_group_params)

    if @admin_scholarship_group.save
      redirect_to @admin_scholarship_group, notice: 'Scholarship group was successfully created.'
    else
      render :new
    end
  end

  # PATCH/PUT /admin/scholarship_groups/1
  def update
    if @admin_scholarship_group.update(admin_scholarship_group_params)
      redirect_to @admin_scholarship_group, notice: 'Scholarship group was successfully updated.'
    else
      render :edit
    end
  end

  # DELETE /admin/scholarship_groups/1
  def destroy
    @admin_scholarship_group.destroy
    redirect_to admin_scholarship_groups_url, notice: 'Scholarship group was successfully destroyed.'
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_admin_scholarship_group
      @admin_scholarship_group = Admin::ScholarshipGroup.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def admin_scholarship_group_params
      params.require(:admin_scholarship_group).permit(:name)
    end
end
