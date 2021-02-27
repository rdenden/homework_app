module QuestionsHelper
  def maker1
    def text(a,b)
      "問題文#{a} + #{b}" 
    end
    def answer(a,b)
      "答え#{a + b}"
    end
      
  
  a = (rand(9)+1)
  b = (rand(9)+1)
   text(a,b),answer(a,b)
  end
  
  
  
  def maker2
    'aaaaa'
  end
end


