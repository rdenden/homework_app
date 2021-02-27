class QuestionsController < ApplicationController
  def index
  end

  def index_q1
    $sum1 = SumQuestion.new((rand(9)+1),(rand(9)+1))
    $sum2 = SumQuestion.new((rand(9)+1),(rand(9)+1))
    $sum3 = SumQuestion.new((rand(9)+1),(rand(9)+1))
    $sum4 = SumQuestion.new((rand(9)+1),(rand(9)+1))
    $sum5 = SumQuestion.new((rand(9)+1),(rand(9)+1))
  end

  def index_a1
  end
  
  def create      
    @answer1 = params[:answer1]
    @answer2 = params[:answer2]
    @answer3 = params[:answer3]
    @answer4 = params[:answer4]
    @answer5 = params[:answer5]
    @count = 0
    if "#{$sum1.answer}" == @answer1
      @count += 1
    end
    if "#{$sum2.answer}" == @answer2
      @count += 1
    end
    if "#{$sum3.answer}" == @answer3
      @count += 1
    end
    if "#{$sum4.answer}" == @answer4
      @count += 1
    end
    if "#{$sum5.answer}" == @answer5
      @count += 1
    end
    
      
  end
  
  def show
  end

  

end
