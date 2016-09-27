require 'rails_helper'

# Specs in this file have access to a helper object that includes
# the Admin::DepartmentsHelper. For example:
#
# describe Admin::DepartmentsHelper do
#   describe "string concat" do
#     it "concats two strings with spaces" do
#       expect(helper.concat_strings("this","that")).to eq("this that")
#     end
#   end
# end
RSpec.describe Admin::DepartmentsHelper, type: :helper do
  context 'simple test' do
    it 'passes normal test' do
      expect(2+2).to eq(4)
    end
  end

end
