class QuestionsController < ApplicationController
  def index
  end

  def index_q1
    $add1 = AddQuestion.new(rand(1..9),rand(1..9))
    $add2 = AddQuestion.new(rand(1..9),rand(1..9))
    $add3 = AddQuestion.new(rand(1..9),rand(1..9))
    $add4 = AddQuestion.new(rand(1..9),rand(1..9))
    $add5 = AddQuestion.new(rand(1..9),rand(1..9))
  end

  def index_q2
    $add1 = AddQuestion.new(rand(10..99),rand(10..99))
    $add2 = AddQuestion.new(rand(10..99),rand(10..99))
    $add3 = AddQuestion.new(rand(10..99),rand(10..99))
    $add4 = AddQuestion.new(rand(10..99),rand(10..99))
    $add5 = AddQuestion.new(rand(10..99),rand(10..99))
  end

  def index_q3
    $add1 = AddQuestion.new(rand(100..999),rand(100..999))
    $add2 = AddQuestion.new(rand(100..999),rand(100..999))
    $add3 = AddQuestion.new(rand(100..999),rand(100..999))
    $add4 = AddQuestion.new(rand(100..999),rand(100..999))
    $add5 = AddQuestion.new(rand(100..999),rand(100..999))
  end

  def index_q4
    $sub1 = SubQuestion.new(rand(1..9),rand(1..9))
    $sub2 = SubQuestion.new(rand(1..9),rand(1..9))
    $sub3 = SubQuestion.new(rand(1..9),rand(0..9))
    $sub4 = SubQuestion.new(rand(1..9),rand(1..9))
    $sub5 = SubQuestion.new(rand(1..9),rand(1..9))
  end
  def index_q5
    $sub1 = SubQuestion.new(rand(10..99),rand(10..99))
    $sub2 = SubQuestion.new(rand(10..99),rand(10..99))
    $sub3 = SubQuestion.new(rand(10..99),rand(10..99))
    $sub4 = SubQuestion.new(rand(10..99),rand(10..99))
    $sub5 = SubQuestion.new(rand(10..99),rand(10..99))
  end
  def index_q6
    $sub1 = SubQuestion.new(rand(100..999),rand(100..999))
    $sub2 = SubQuestion.new(rand(100..999),rand(100..999))
    $sub3 = SubQuestion.new(rand(100..999),rand(100..999))
    $sub4 = SubQuestion.new(rand(100..999),rand(100..999))
    $sub5 = SubQuestion.new(rand(100..999),rand(100..999))
  end
  
  def create      
    @user_answer1 = params[:answer1]
    @user_answer2 = params[:answer2]
    @user_answer3 = params[:answer3]
    @user_answer4 = params[:answer4]
    @user_answer5 = params[:answer5]
    @count = 0
    if params[:q_id] == '1' || params[:q_id] == '2' || params[:q_id] == '3'      
      if "#{$add1.answer}" == @user_answer1
        @count += 1
      end
      if "#{$add2.answer}" == @user_answer2
        @count += 1
      end
      if "#{$add3.answer}" == @user_answer3
        @count += 1
      end
      if "#{$add4.answer}" == @user_answer4
        @count += 1
      end
      if "#{$add5.answer}" == @user_answer5
        @count += 1
      end
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
      if "#{$sub1.answer}" == @user_answer1
        @count += 1
      end
      if "#{$sub2.answer}" == @user_answer2
        @count += 1
      end
      if "#{$sub3.answer}" == @user_answer3
        @count += 1
      end
      if "#{$sub4.answer}" == @user_answer4
        @count += 1
      end
      if "#{$sub5.answer}" == @user_answer5
        @count += 1
      end
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
    
  end
  
  def show
  end

  

end
