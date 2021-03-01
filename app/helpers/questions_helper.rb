module QuestionsHelper
end
class AddQuestion
    
  def initialize(a,b)
    @text = "#{a} + #{b}" 
    @answer = a + b
  end
  
  def text
    @text
  end
  
  def answer
    @answer
  end
end

class SubQuestion
  
  def initialize(a,b)
    if a >= b
      @text = "#{a} - #{b}"
      @answer = a - b
    else
      @text = "#{b} - #{a}"
      @answer = b - a
    end
  end

  def text
    @text
  end
  
  def answer
    @answer
  end
end
