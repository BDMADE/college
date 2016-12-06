require 'rails_helper'

RSpec.describe Admin::AdmissionProcess, type: :model do
  it{is_expected.to validate_presence_of :step}
  it{is_expected.to validate_presence_of :name}
  it{is_expected.to validate_uniqueness_of :step}
  it{is_expected.to validate_uniqueness_of :name}

end
