require 'rails_helper'

RSpec.describe Admin::TuitionFeesGroup, type: :model do
  it { is_expected.to validate_presence_of :name }
end