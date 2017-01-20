class Admin::TuitionFeesGroupsController < ApplicationController
  before_action :set_admin_tuition_fees_group, only: [:show, :edit, :update, :destroy]
  before_action :authorized?

  layout 'college_admin'

  # GET /admin/tuition_fees_groups
  def index
    @admin_tuition_fees_groups = Admin::TuitionFeesGroup.all
  end

  # GET /admin/tuition_fees_groups/1
  def show
  end

  # GET /admin/tuition_fees_groups/new
  def new
    @admin_tuition_fees_group = Admin::TuitionFeesGroup.new
  end

  # GET /admin/tuition_fees_groups/1/edit
  def edit
  end

  # POST /admin/tuition_fees_groups
  def create
    @admin_tuition_fees_group = Admin::TuitionFeesGroup.new(admin_tuition_fees_group_params)

    if @admin_tuition_fees_group.save
      redirect_to @admin_tuition_fees_group, notice: 'Tuition fees group was successfully created.'
    else
      render :new
    end
  end

  # PATCH/PUT /admin/tuition_fees_groups/1
  def update
    if @admin_tuition_fees_group.update(admin_tuition_fees_group_params)
      redirect_to @admin_tuition_fees_group, notice: 'Tuition fees group was successfully updated.'
    else
      render :edit
    end
  end

  # DELETE /admin/tuition_fees_groups/1
  def destroy
    @admin_tuition_fees_group.destroy
    redirect_to admin_tuition_fees_groups_url, notice: 'Tuition fees group was successfully destroyed.'
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_admin_tuition_fees_group
      @admin_tuition_fees_group = Admin::TuitionFeesGroup.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def admin_tuition_fees_group_params
      params.require(:admin_tuition_fees_group).permit(:name)
    end
end
