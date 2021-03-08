require 'rails_helper'

RSpec.describe Question, type: :model do
  describe '#create' do
    before do
      @user = FactoryBot.create(:user)
      @question = FactoryBot.build(:question, user_id: @user.id)
    end

    describe '成績保存' do
      context '成績保存ができるとき' do
        it 'question_indexとscore、user_idが存在すれば登録できること' do
          expect(@question).to be_valid
        end
      end
      context '成績保存ができないとき' do
        it 'question_indexが空では登録できないこと' do
          @question.question_index = nil
          @question.valid?
          expect(@question.errors.full_messages).to include("Question index can't be blank")
        end
        it 'scoreが空では登録できないこと' do
          @question.score = nil
          @question.valid?
          expect(@question.errors.full_messages).to include("Score can't be blank")
        end

        it 'user_idが空では登録できないこと' do
          @question.user_id = nil
          @question.valid?
          expect(@question.errors.full_messages).to include("User can't be blank")
        end
      end
    end
  end
end

