require 'rails_helper'

RSpec.describe Admin::NoticeForm, type: :model do
  it { is_expected.to validate_presence_of :description }
  it { is_expected.to validate_presence_of :background_color }
end
