require 'rails_helper'

RSpec.describe Admin::Website, type: :model do
  it { is_expected.to validate_presence_of :name }
  it { is_expected.to validate_uniqueness_of :name }
  it { is_expected.to validate_presence_of :details }
end
