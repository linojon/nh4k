# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :trip do
    start_at "2012-07-16 11:21:51"
    end_at "2012-07-16 11:21:51"
    route "MyText"
    distance 1.5
  end
end
