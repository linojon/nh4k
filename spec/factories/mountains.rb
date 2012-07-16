# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :mountain do
    name "MyString"
    elevation 1
    lat "9.99"
    lng "9.99"
    trainsnh_link "MyString"
    netc_link "MyString"
    amc_link "MyString"
    notes "MyText"
  end
end
