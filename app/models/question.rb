class Question < ApplicationRecord

  with_options presence: true do
    validates :question_index
    validates :score
    validates :user_id
  end
  belongs_to :user

  
end

