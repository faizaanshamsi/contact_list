FactoryGirl.define do
  factory :contact do
    sequence (:first_name) { |n| "Example Name #{n}" }
    sequence (:last_name) { |n| "Example Name #{n}" }
    sequence (:email) { |n| "#{n}@name.com" }
    sequence (:subject) { |n| "Example Name #{n}" }
    sequence (:description) { |n| "Example Name #{n}" }
  end
end
