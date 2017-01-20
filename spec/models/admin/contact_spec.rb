require 'rails_helper'

RSpec.describe Admin::Contact, type: :model do
  it { is_expected.to validate_presence_of :name }
  it { is_expected.to validate_presence_of :email }
  it { is_expected.to validate_presence_of :phone }
  it { is_expected.to validate_presence_of :message }
end
