class Admin::DashboardController < ApplicationController
  before_action :authorized?

  layout 'college_admin'

  def index
  end
end
