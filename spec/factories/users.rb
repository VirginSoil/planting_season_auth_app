# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :user do
    full_name "Tyler Long"
    email "tyler.stephen.long@gmail.com"
    phone "3035551212"
    password "password"
    password_confirmation "password"
  end
end
