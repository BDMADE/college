require 'rails_helper'

RSpec.describe Admin::About, type: :model do
  it { is_expected.to validate_presence_of :slug }
  it { is_expected.to validate_presence_of :description }
  it { is_expected.to validate_uniqueness_of :slug }
end
