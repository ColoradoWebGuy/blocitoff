include RandomData

FactoryGirl.define do
  factory :checklist do
    title RandomData.random_sentence
    checked false
  end

end
