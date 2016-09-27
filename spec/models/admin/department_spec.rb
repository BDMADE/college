require 'rails_helper'

RSpec.describe Admin::Department, type: :model do

  context 'Department model' do
    it { is_expected.to validate_presence_of :name }
    it { is_expected.to validate_presence_of :short_form }
    it { is_expected.to validate_uniqueness_of :name }
    it { is_expected.to validate_uniqueness_of :short_form }
  end
end
