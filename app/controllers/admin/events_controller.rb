class Admin::EventsController < ApplicationController
  before_action :set_admin_event, only: [:show, :edit, :update, :destroy]
  before_action :authorized?

  layout 'college_admin'

  # GET /admin/events
  def index
    @admin_events = Admin::Event.all
  end

  # GET /admin/events/1
  def show
  end

  # GET /admin/events/new
  def new
    @admin_event = Admin::Event.new
  end

  # GET /admin/events/1/edit
  def edit
  end

  # POST /admin/events
  def create
    @admin_event = Admin::Event.new(admin_event_params)

    if @admin_event.save
      redirect_to @admin_event, notice: 'Event was successfully created.'
    else
      render :new
    end
  end

  # PATCH/PUT /admin/events/1
  def update
    if @admin_event.update(admin_event_params)
      redirect_to @admin_event, notice: 'Event was successfully updated.'
    else
      render :edit
    end
  end

  # DELETE /admin/events/1
  def destroy
    @admin_event.destroy
    redirect_to admin_events_url, notice: 'Event was successfully destroyed.'
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_admin_event
      @admin_event = Admin::Event.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def admin_event_params
      params.require(:admin_event).permit(:name, :event_date, :starting_time, :ending_time,:place, :icon_id, :details)
    end
end
