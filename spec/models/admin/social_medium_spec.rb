require 'rails_helper'

RSpec.describe Admin::SocialMedium, type: :model do
  it{is_expected.to validate_presence_of :name}
  it{is_expected.to validate_uniqueness_of :name}
  it{is_expected.to validate_presence_of :icon}
  #it{is_expected.to validate_uniqueness_of :icon}
  it{is_expected.to validate_presence_of :link}
  it{is_expected.to validate_uniqueness_of :link}
end

