RSpec.describe FrontendHelper, type: :helper do
  describe '#scholarship_style_change(scholarship)' do
    let!(:scholarship_group) { FactoryGirl.create :admin_scholarship_group }
    let(:scholarship_50) { FactoryGirl.create :admin_scholarship, name: '50% off', discount: 50, condition: 'GPA 5', details: 'only GPA 5', group: scholarship_group  }
    let!(:scholarship_25) { FactoryGirl.create :admin_scholarship, name: '25% off', discount: 25, condition: 'GPA 4.25', details: 'only GPA 4.25', group: scholarship_group }
    let!(:scholarship_20) { FactoryGirl.create :admin_scholarship, name: '20% off', discount: 20, condition: 'GPA 4', details: 'only GPA 4', group: scholarship_group  }
    let(:first_array) { ['OliveDrab', 'box box-border'] }
    let(:second_array) { ['FireBush', 'box box-theme'] }
    let(:third_array) { ['Mojo', 'box box-dark'] }

    context 'checks above 50% scholarship' do
      it 'returns first array' do
        expect(scholarship_style_change(scholarship_50)).to eq(first_array)
      end
      it 'does not return second array' do
        expect(scholarship_style_change(scholarship_50)).not_to eq(second_array)
      end
      it 'does not return third array' do
        expect(scholarship_style_change(scholarship_50)).not_to eq(third_array)
      end
    end

    context 'checks above 25% scholarship with even id' do
      it 'does not return first array' do
        expect(scholarship_style_change(scholarship_25)).not_to eq(first_array)
      end
      it 'does not return second array' do
        expect(scholarship_style_change(scholarship_25)).not_to eq(second_array)
      end
      it 'returns third array' do
        expect(scholarship_style_change(scholarship_25)).to eq(third_array)
      end
    end

    context 'checks above 20% scholarship with odd id' do
      it 'does not return first array' do
        expect(scholarship_style_change(scholarship_20)).not_to eq(first_array)
      end
      it 'does not return second array' do
        expect(scholarship_style_change(scholarship_20)).to eq(second_array)
      end
      it 'does_not return third array' do
        expect(scholarship_style_change(scholarship_20)).not_to eq(third_array)
      end
    end
  end
  
  describe '#total_tuition_fees(tuition)' do
    let!(:tuition_group) { FactoryGirl.create :admin_tuition_fees_group, name: 'new fees' }
    let!(:admission_fees_status_1) { FactoryGirl.create :admin_admission_fees_status, name: 'Admission_fees' ,value: 100 }
    let!(:admission_fees_status_2) { FactoryGirl.create :admin_admission_fees_status, name: 'second', value: 2 }
    let(:tuition_fees) { FactoryGirl.create :admin_tuition_fee, name: 'admission fees',group_id: tuition_group.id, admin_admission_fees_statuses: [admission_fees_status_1,admission_fees_status_2] }
    let(:total_payable) { 200 }

    it 'returns total_payable' do
      expect(total_tuition_fees(tuition_fees)).to eq(total_payable)
    end
  end

  describe '#tuition_fees_badge(tuition)' do
    let!(:tuition_group) { FactoryGirl.create :admin_tuition_fees_group, name: 'new fees' }
    let!(:admission_fees_status_1) { FactoryGirl.create :admin_admission_fees_status, name: 'Admission_fees' ,value: 100 }
    let!(:admission_fees_status_2) { FactoryGirl.create :admin_admission_fees_status, name: 'second', value: 2 }
    let(:tuition_fees_1) { FactoryGirl.create :admin_tuition_fee, id:1, name: 'admission fees 1',group_id: tuition_group.id, admin_admission_fees_statuses: [admission_fees_status_1,admission_fees_status_2] }
    let(:tuition_fees_2) { FactoryGirl.create :admin_tuition_fee, id:2, name: 'admission fees 2',group_id: tuition_group.id, admin_admission_fees_statuses: [admission_fees_status_1,admission_fees_status_2] }

    it 'returns success badge for odd number id' do
      expect(tuition_fees_badge(tuition_fees_1)).to eq('success')
    end

    it 'returns warning badge for even number id' do
      expect(tuition_fees_badge(tuition_fees_2)).to eq('warning')
    end
  end

  xdescribe '#active_menu(menu_url)' do
    let(:active_url) { 'http://localhost:3000/noticeboard' }
    let(:invalid_active_url) { nil }
    let!(:original_url) { 'http://localhost:3000/noticeboard' }

    context 'with valid url' do
      it 'should return active menu' do
        expect(active_menu(active_url)).to eq('active')
      end
    end

    context 'with invalid url' do
      it 'should return active menu' do
        expect(active_menu(invalid_active_url)).to be nil
      end
    end
  end
end
