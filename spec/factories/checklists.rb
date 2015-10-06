include RandomData

FactoryGirl.define do
  factory :checklist do
    title RandomData.random_word
    checked false
    user
  end

end
