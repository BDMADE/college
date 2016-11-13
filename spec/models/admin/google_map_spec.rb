require 'rails_helper'

RSpec.describe Admin::GoogleMap, type: :model do
  it{is_expected.to validate_presence_of :name}
  it{is_expected.to validate_presence_of :latitude}
  it{is_expected.to validate_presence_of :longitude}
  it{is_expected.to validate_presence_of :google_api_key}
  it{is_expected.to validate_uniqueness_of :name}
  it{is_expected.to validate_uniqueness_of :latitude}
  it{is_expected.to validate_uniqueness_of :longitude}
  it{is_expected.to validate_uniqueness_of :google_api_key}
end
