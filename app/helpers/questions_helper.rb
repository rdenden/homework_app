module QuestionsHelper
end
class SumQuestion
    
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

