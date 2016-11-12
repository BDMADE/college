FactoryGirl.define do
  factory :admin_testimonial, class: 'Admin::Testimonial' do
    name "MyString"
    description "MyText"
    department nil
    semester nil
  end
end
