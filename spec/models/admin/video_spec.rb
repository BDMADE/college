require 'rails_helper'

RSpec.describe Admin::Video, type: :model do
  it{is_expected.to validate_presence_of :name}
  it{is_expected.to validate_presence_of :link}
  it{is_expected.to validate_presence_of :details}
  it{is_expected.to validate_uniqueness_of :name}
  it{is_expected.to validate_uniqueness_of :link}
  it{is_expected.to validate_uniqueness_of :details}
end
