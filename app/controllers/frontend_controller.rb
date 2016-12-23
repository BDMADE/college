class FrontendController < ApplicationController
  layout 'college/base'
  def home
  end

  def noticeboard
    @title = 'Notice Board'
    @notices = Admin::NoticeBoard.order(updated_at: :desc)
  end

  def about
  end

  def admission_eligibility
    @title = 'Admission Eligibility'
    @admission_eligibilities = Admin:: AdmissionEligibility.order(updated_at: :desc)
  end

  def tuition_fees
  end

  def scholarships
    @title = 'Scholarship'
    @scholarship_groups = Admin::ScholarshipGroup.all
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
