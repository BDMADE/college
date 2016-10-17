require 'rails_helper'

RSpec.describe Admin::AdmissionEligibility, type: :model do
  context 'Admission eligibility model' do
    it { is_expected.to validate_presence_of :name }
    it { is_expected.to validate_presence_of :description }
  end
end