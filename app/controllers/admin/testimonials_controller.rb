class Admin::TestimonialsController < ApplicationController
  before_action :set_admin_testimonial, only: [:show, :edit, :update, :destroy]
  before_action :authorized?

  layout 'college_admin'

  # GET /admin/testimonials
  def index
    @admin_testimonials = Admin::Testimonial.all
  end

  # GET /admin/testimonials/1
  def show
  end

  # GET /admin/testimonials/new
  def new
    @admin_testimonial = Admin::Testimonial.new
  end

  # GET /admin/testimonials/1/edit
  def edit
  end

  # POST /admin/testimonials
  def create
    @admin_testimonial = Admin::Testimonial.new(admin_testimonial_params)

    if @admin_testimonial.save
      redirect_to @admin_testimonial, notice: 'Testimonial was successfully created.'
    else
      render :new
    end
  end

  # PATCH/PUT /admin/testimonials/1
  def update
    if @admin_testimonial.update(admin_testimonial_params)
      redirect_to @admin_testimonial, notice: 'Testimonial was successfully updated.'
    else
      render :edit
    end
  end

  # DELETE /admin/testimonials/1
  def destroy
    @admin_testimonial.destroy
    redirect_to admin_testimonials_url, notice: 'Testimonial was successfully destroyed.'
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_admin_testimonial
      @admin_testimonial = Admin::Testimonial.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def admin_testimonial_params
      params.require(:admin_testimonial).permit(:name, :description, :department_id, :semester_id,:image)
    end
end
