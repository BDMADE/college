class Admin::NoticeBoardsController < ApplicationController
  before_action :set_admin_notice_board, only: [:show, :edit, :update, :destroy]
  before_action :authorized?

  layout 'college_admin'

  # GET /admin/notice_boards
  def index
    @admin_notice_boards = Admin::NoticeBoard.all
  end

  # GET /admin/notice_boards/1
  def show
  end

  # GET /admin/notice_boards/new
  def new
    @admin_notice_board = Admin::NoticeBoard.new
  end

  # GET /admin/notice_boards/1/edit
  def edit
  end

  # POST /admin/notice_boards
  def create
    @admin_notice_board = Admin::NoticeBoard.new(admin_notice_board_params)

    if @admin_notice_board.save
      redirect_to @admin_notice_board, notice: 'Notice board was successfully created.'
    else
      render :new
    end
  end

  # PATCH/PUT /admin/notice_boards/1
  def update
    if @admin_notice_board.update(admin_notice_board_params)
      redirect_to @admin_notice_board, notice: 'Notice board was successfully updated.'
    else
      render :edit
    end
  end

  # DELETE /admin/notice_boards/1
  def destroy
    @admin_notice_board.destroy
    redirect_to admin_notice_boards_url, notice: 'Notice board was successfully destroyed.'
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_admin_notice_board
      @admin_notice_board = Admin::NoticeBoard.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
  def admin_notice_board_params
    params.require(:admin_notice_board).permit(:name, :notice_type, :semester_id, :department_id,admin_notice_forms_attributes:[:id,:description,:background_color,:_destroy])
  end
  end
