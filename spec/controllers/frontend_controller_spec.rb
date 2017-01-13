require 'rails_helper'

RSpec.describe FrontendController, type: :controller do

  describe "GET #home" do
    it "returns http success" do
      get :home
      expect(response).to have_http_status(:success)
    end
  end

  describe "GET #noticeboard" do
    it "returns http success" do
      get :noticeboard
      expect(response).to have_http_status(:success)
    end
  end

  describe "GET #about" do
    it "returns http success" do
      get :about
      expect(response).to have_http_status(:success)
    end
  end

  describe "GET #admission_eligibility" do
    it "returns http success" do
      get :admission_eligibility
      expect(response).to have_http_status(:success)
    end
  end

  describe "GET #tuition_fees" do
    it "returns http success" do
      get :tuition_fees
      expect(response).to have_http_status(:success)
    end
  end

  describe "GET #scholarships" do
    it "returns http success" do
      get :scholarships
      expect(response).to have_http_status(:success)
    end
  end

  describe "GET #how_to_apply" do
    let!(:website) { FactoryGirl.create :admin_website, name: 'BUET' }
    it "returns http success" do
      get :how_to_apply
      expect(response).to have_http_status(:success)
    end
  end

  describe "GET #courses" do
    let(:course) { FactoryGirl.create :admin_course, name: 'Math', id: 1}
    it "returns http success" do
      get :courses, params: { id: course.to_param }
      expect(response).to have_http_status(:success)
    end
  end

  describe "GET #news" do
    it "returns http success" do
      get :news
      expect(response).to have_http_status(:success)
    end
  end

  describe "GET #news_details" do
    let(:news) { FactoryGirl.create :admin_news }
    it "returns http success" do
      get :news, params: { id: news.to_param }
      expect(response).to have_http_status(:success)
    end
  end

  describe "GET #event" do
    it "returns http success" do
      get :event
      expect(response).to have_http_status(:success)
    end
  end

  describe "GET #contact" do
    it "returns http success" do
      get :contact
      expect(response).to have_http_status(:success)
    end
  end

end
