require 'rails_helper'

RSpec.describe Admin::AdmissionFeesStatus, type: :model do
  context 'Admin fee status model ' do
    it { is_expected.to validate_presence_of :name }
    it { is_expected.to validate_presence_of :value }
end
end