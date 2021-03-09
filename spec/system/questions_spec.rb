require 'rails_helper'

RSpec.describe '成績保存機能', type: :system do
  before do
    @user = FactoryBot.create(:user)
  end
  context '成績が保存されるとき' do 
    it 'ログイン済みユーザーが問題の解答を送信すれば、成績は保存される' do     
      # トップページに移動する
      visit root_path
      # トップページにログインページへ遷移するボタンがあることを確認する
      expect(page).to have_content('ログイン')
      # ログインページへ遷移する
      visit new_user_session_path
      # 正しいユーザー情報を入力する
     
      fill_in 'Nickname', with: @user.nickname
      fill_in 'Email', with: @user.email
      fill_in 'Password', with: @user.password
      
      # ログインボタンを押す
      find('input[name="commit"]').click
      # トップページへ遷移することを確認する
      expect(current_path).to eq root_path
      # 問題1のリンクがあることを確認する
      expect(page).to have_content('問題1')
      # 問題1のページへ遷移する
      visit index_q1_questions_path
      # 任意の解答を入力する
      fill_in 'answer1', with: 1
      fill_in 'answer2', with: 1
      fill_in 'answer3', with: 1
      fill_in 'answer4', with: 1
      fill_in 'answer5', with: 1
      # 解答するボタンを押すとquestionモデルのカウントが1上がる
      expect{
        find('input[name="commit"]').click
      }.to change { Question.count }.by(1)
    end
  end
  context '成績が保存されないとき' do 
    it '未ログインユーザーが問題の解答を送信しても、成績は保存されない' do
      # トップページに移動する
      visit root_path
      # 問題1のリンクがあることを確認する
      expect(page).to have_content('問題1')
      # 問題1のページへ遷移する
      visit index_q1_questions_path
      # 任意の解答を入力する
      fill_in 'answer1', with: 1
      fill_in 'answer2', with: 1
      fill_in 'answer3', with: 1
      fill_in 'answer4', with: 1
      fill_in 'answer5', with: 1
      # 解答するボタンを押すとquestionモデルのカウントが1上がる
      expect{
      find('input[name="commit"]').click
      }.to change { Question.count }.by(0)
    end
  end
end

