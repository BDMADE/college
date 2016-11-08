require 'rails_helper'


RSpec.describe Admin::Course, type: :model do
  it{is_expected.to validate_presence_of :name}
  it{is_expected.to validate_presence_of :description}
  it{is_expected.to validate_uniqueness_of :name}
end
