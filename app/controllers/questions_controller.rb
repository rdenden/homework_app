class QuestionsController < ApplicationController
  def index; end

  def index_q1
    $add1 = AddQuestion.new(rand(1..9), rand(1..9))
    $add2 = AddQuestion.new(rand(1..9), rand(1..9))
    $add3 = AddQuestion.new(rand(1..9), rand(1..9))
    $add4 = AddQuestion.new(rand(1..9), rand(1..9))
    $add5 = AddQuestion.new(rand(1..9), rand(1..9))
  end

  def index_q2
    $add1 = AddQuestion.new(rand(10..99), rand(10..99))
    $add2 = AddQuestion.new(rand(10..99), rand(10..99))
    $add3 = AddQuestion.new(rand(10..99), rand(10..99))
    $add4 = AddQuestion.new(rand(10..99), rand(10..99))
    $add5 = AddQuestion.new(rand(10..99), rand(10..99))
  end

  def index_q3
    $add1 = AddQuestion.new(rand(100..999), rand(100..999))
    $add2 = AddQuestion.new(rand(100..999), rand(100..999))
    $add3 = AddQuestion.new(rand(100..999), rand(100..999))
    $add4 = AddQuestion.new(rand(100..999), rand(100..999))
    $add5 = AddQuestion.new(rand(100..999), rand(100..999))
  end

  def index_q4
    $sub1 = SubQuestion.new(rand(1..9), rand(1..9))
    $sub2 = SubQuestion.new(rand(1..9), rand(1..9))
    $sub3 = SubQuestion.new(rand(1..9), rand(0..9))
    $sub4 = SubQuestion.new(rand(1..9), rand(1..9))
    $sub5 = SubQuestion.new(rand(1..9), rand(1..9))
  end

  def index_q5
    $sub1 = SubQuestion.new(rand(10..99), rand(10..99))
    $sub2 = SubQuestion.new(rand(10..99), rand(10..99))
    $sub3 = SubQuestion.new(rand(10..99), rand(10..99))
    $sub4 = SubQuestion.new(rand(10..99), rand(10..99))
    $sub5 = SubQuestion.new(rand(10..99), rand(10..99))
  end

  def index_q6
    $sub1 = SubQuestion.new(rand(100..999), rand(100..999))
    $sub2 = SubQuestion.new(rand(100..999), rand(100..999))
    $sub3 = SubQuestion.new(rand(100..999), rand(100..999))
    $sub4 = SubQuestion.new(rand(100..999), rand(100..999))
    $sub5 = SubQuestion.new(rand(100..999), rand(100..999))
  end

  def create
    @user_answer1 = params[:answer1]
    @user_answer2 = params[:answer2]
    @user_answer3 = params[:answer3]
    @user_answer4 = params[:answer4]
    @user_answer5 = params[:answer5]
    @count = 0
    if params[:q_id] == '1' || params[:q_id] == '2' || params[:q_id] == '3'
      @count += 1 if $add1.answer.to_s == @user_answer1
      @count += 1 if $add2.answer.to_s == @user_answer2
      @count += 1 if $add3.answer.to_s == @user_answer3
      @count += 1 if $add4.answer.to_s == @user_answer4
      @count += 1 if $add5.answer.to_s == @user_answer5
      @answer1 = $add1.answer
      @answer2 = $add2.answer
      @answer3 = $add3.answer
      @answer4 = $add4.answer
      @answer5 = $add5.answer
      @text1 = $add1.text
      @text2 = $add2.text
      @text3 = $add3.text
      @text4 = $add4.text
      @text5 = $add5.text
    elsif params[:q_id] == '4' || params[:q_id] == '5' || params[:q_id] == '6'
      @count += 1 if $sub1.answer.to_s == @user_answer1
      @count += 1 if $sub2.answer.to_s == @user_answer2
      @count += 1 if $sub3.answer.to_s == @user_answer3
      @count += 1 if $sub4.answer.to_s == @user_answer4
      @count += 1 if $sub5.answer.to_s == @user_answer5
      @answer1 = $sub1.answer
      @answer2 = $sub2.answer
      @answer3 = $sub3.answer
      @answer4 = $sub4.answer
      @answer5 = $sub5.answer
      @text1 = $sub1.text
      @text2 = $sub2.text
      @text3 = $sub3.text
      @text4 = $sub4.text
      @text5 = $sub5.text
    end
    Question.create(question_index: params[:q_id], score: @count, user_id: current_user.id) if user_signed_in?
  end

  def show
    # 問１の解答データ取得-------------------------------------
    @user_questions1 = Question.where(user_id: current_user.id, question_index: 1)
    # 各得点の回数を配列に格納
    @user_questions1_scores = []
    # 点数の合計値
    sum_score = 0
    6.times do |t|
      @user_questions1_scores << @user_questions1.where(score: t).count
      # 得点x回数を合計値に追加
      sum_score += @user_questions1.where(score: t).count * t
    end
    # 合計値を全レコード数で除する
    @avg1 = if Question.where(user_id: current_user.id, question_index: 1).count == 0
              0
            else
              format('%.2f', sum_score / Question.where(user_id: current_user.id, question_index: 1).count.to_f)
            end

    @user_questions1_recent = Question.where(user_id: current_user.id, question_index: 1).order(:created_time).limit(5)

    # 問２の解答データ取得---------------------------------------
    @user_questions2 = Question.where(user_id: current_user.id, question_index: 2)
    # 各得点の回数を配列に格納
    @user_questions2_scores = []
    # 点数の合計値
    sum_score = 0
    6.times do |t|
      @user_questions2_scores << @user_questions2.where(score: t).count
      # 得点x回数を合計値に追加
      sum_score += @user_questions2.where(score: t).count * t
    end
    # 合計値を全レコード数で除する
    @avg2 = if Question.where(user_id: current_user.id, question_index: 1).count == 0
              0
            else
              format('%.2f', sum_score / Question.where(user_id: current_user.id, question_index: 2).count.to_f)
            end
    @user_questions2_recent = Question.where(user_id: current_user.id, question_index: 2).order(:created_time).limit(5)

    # 問３の解答データ取得------------------------------------------
    @user_questions3 = Question.where(user_id: current_user.id, question_index: 3)
    # 各得点の回数を配列に格納
    @user_questions3_scores = []
    # 点数の合計値
    sum_score = 0
    6.times do |t|
      @user_questions3_scores << @user_questions3.where(score: t).count
      # 得点x回数を合計値に追加
      sum_score += @user_questions3.where(score: t).count * t
    end
    # 合計値を全レコード数で除する
    @avg3 = if Question.where(user_id: current_user.id, question_index: 3).count == 0
              0
            else
              format('%.2f', sum_score / Question.where(user_id: current_user.id, question_index: 3).count.to_f)
            end
    @user_questions3_recent = Question.where(user_id: current_user.id, question_index: 3).order(:created_time).limit(5)

    # 問4の解答データ取得----------------------------------------------
    @user_questions4 = Question.where(user_id: current_user.id, question_index: 4)
    # 各得点の回数を配列に格納
    @user_questions4_scores = []
    # 点数の合計値
    sum_score = 0
    6.times do |t|
      @user_questions4_scores << @user_questions4.where(score: t).count
      # 得点x回数を合計値に追加
      sum_score += @user_questions4.where(score: t).count * t
    end
    # 合計値を全レコード数で除する
    @avg4 = if Question.where(user_id: current_user.id, question_index: 4).count == 0
              0
            else
              format('%.2f', sum_score / Question.where(user_id: current_user.id, question_index: 4).count.to_f)
            end
    @user_questions4_recent = Question.where(user_id: current_user.id, question_index: 4).order(:created_time).limit(5)

    # 問5の解答データ取得------------------------------------------------
    @user_questions5 = Question.where(user_id: current_user.id, question_index: 5)
    # 各得点の回数を配列に格納
    @user_questions5_scores = []
    # 点数の合計値
    sum_score = 0
    6.times do |t|
      @user_questions5_scores << @user_questions5.where(score: t).count
      # 得点x回数を合計値に追加
      sum_score += @user_questions5.where(score: t).count * t
    end
    # 合計値を全レコード数で除する
    @avg5 = if Question.where(user_id: current_user.id, question_index: 5).count == 0
              0
            else
              format('%.2f', sum_score / Question.where(user_id: current_user.id, question_index: 5).count.to_f)
            end
    @user_questions5_recent = Question.where(user_id: current_user.id, question_index: 5).order(:created_time).limit(5)

    # 問題6の解答データ取得----------------------------------------------
    @user_questions6 = Question.where(user_id: current_user.id, question_index: 6)
    # 各得点の回数を配列に格納
    @user_questions6_scores = []
    # 点数の合計値
    sum_score = 0
    6.times do |t|
      @user_questions6_scores << @user_questions6.where(score: t).count
      # 得点x回数を合計値に追加
      sum_score += @user_questions6.where(score: t).count * t
    end
    # 合計値を全レコード数で除する
    @avg6 = if Question.where(user_id: current_user.id, question_index: 4).count == 0
              0
            else
              format('%.2f', sum_score / Question.where(user_id: current_user.id, question_index: 6).count.to_f)
            end
    @user_questions6_recent = Question.where(user_id: current_user.id, question_index: 6).order(:created_time).limit(5)
  end
end
