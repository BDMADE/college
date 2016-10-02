require 'rails_helper'

RSpec.describe Admin::About, type: :model do


  it { is_expected.to validate_presence_of :slug }
end
