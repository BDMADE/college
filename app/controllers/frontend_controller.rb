class FrontendController < ApplicationController
  layout 'college/base'
  def home
  end

  def noticeboard
    @title = 'Notice Board'
    @notices = Admin::NoticeBoard.order(updated_at: :desc)
  end

  def about
    @title = 'About us'
    @about = Admin::About.last
  end

  def admission_eligibility
  end

  def tuition_fees
  end

  def scholarships
  end

  def how_to_apply
  end

  def courses
  end

  def news
  end

  def event
  end

  def contact
  end
end
