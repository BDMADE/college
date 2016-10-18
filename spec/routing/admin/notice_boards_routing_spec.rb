require "rails_helper"

RSpec.describe Admin::NoticeBoardsController, type: :routing do
  describe "routing" do

    it "routes to #index" do
      expect(:get => "/admin/notice_boards").to route_to("admin/notice_boards#index")
    end

    it "routes to #new" do
      expect(:get => "/admin/notice_boards/new").to route_to("admin/notice_boards#new")
    end

    it "routes to #show" do
      expect(:get => "/admin/notice_boards/1").to route_to("admin/notice_boards#show", :id => "1")
    end

    it "routes to #edit" do
      expect(:get => "/admin/notice_boards/1/edit").to route_to("admin/notice_boards#edit", :id => "1")
    end

    it "routes to #create" do
      expect(:post => "/admin/notice_boards").to route_to("admin/notice_boards#create")
    end

    it "routes to #update via PUT" do
      expect(:put => "/admin/notice_boards/1").to route_to("admin/notice_boards#update", :id => "1")
    end

    it "routes to #update via PATCH" do
      expect(:patch => "/admin/notice_boards/1").to route_to("admin/notice_boards#update", :id => "1")
    end

    it "routes to #destroy" do
      expect(:delete => "/admin/notice_boards/1").to route_to("admin/notice_boards#destroy", :id => "1")
    end

  end
end
