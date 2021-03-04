module QuestionsHelper
end

class AddQuestion
  def initialize(a, b)
    @text = "#{a} + #{b}"
    @answer = a + b
  end

  attr_reader :text, :answer
end

class SubQuestion
  def initialize(a, b)
    if a >= b
      @text = "#{a} - #{b}"
      @answer = a - b
    else
      @text = "#{b} - #{a}"
      @answer = b - a
    end
  end

  attr_reader :text, :answer
end
