require 'rails_helper'

RSpec.describe Admin::Scholarship, type: :model do
  it { is_expected.to validate_presence_of :name }
  it { is_expected.to validate_presence_of :discount }
  it { is_expected.to validate_presence_of :condition}
  it { is_expected.to validate_presence_of :details }
  it { is_expected.to validate_uniqueness_of :name }
end
