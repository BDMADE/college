class Admin::ContactsController < ApplicationController
  before_action :set_admin_contact, only: [:show, :edit, :update, :destroy]
  before_action :authorized?, except: [:create]
  layout 'college_admin'

  # GET /admin/contacts
  def index
    @admin_contacts = Admin::Contact.order(updated_at: :desc)
  end

  # GET /admin/contacts/1
  def show
  end

  # GET /admin/contacts/new
  def new
    @admin_contact = Admin::Contact.new
  end

  # GET /admin/contacts/1/edit
  def edit
  end

  # POST /admin/contacts
  def create
    @admin_contact = Admin::Contact.new(admin_contact_params)

    if @admin_contact.save
      redirect_to @admin_contact, notice: 'Contact was successfully created.'
    else
      render :new
    end
  end

  # PATCH/PUT /admin/contacts/1
  def update
    if @admin_contact.update(admin_contact_params)
      redirect_to @admin_contact, notice: 'Contact was successfully updated.'
    else
      render :edit
    end
  end

  # DELETE /admin/contacts/1
  def destroy
    @admin_contact.destroy
    redirect_to admin_contacts_url, notice: 'Contact was successfully destroyed.'
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_admin_contact
      @admin_contact = Admin::Contact.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def admin_contact_params
      params.require(:admin_contact).permit(:name, :email, :phone, :message)
    end
end
