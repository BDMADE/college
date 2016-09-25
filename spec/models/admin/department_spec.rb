require 'rails_helper'

RSpec.describe Admin::Department, type: :model do
  pending "add some examples to (or delete) #{__FILE__}"
  context 'this test only passes' do

    it "should require a rname" do
      Department.new(:name => "").should_not be_valid
    end
end
  context 'this test only passes' do
    it { is_expected.to validate_presence_of :name}
end
xcontext 'this test only passes' do
    it { is_expected.to validate_presence_of :short_form }
end
  context 'this test only passes' do
    it { is_expected.to validate_uniqueness_of :name }
    it { is_expected.to validate_uniqueness_of :short_form }

  end
    end
