FactoryBot.define do
  factory :question do
    question_index { "1" }
    score { 5 }
    
    
    association :user
  end
end
