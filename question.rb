require_relative "player"
class Question

  ARR = *(1..20)
  OPERATORS = [:+, :-, :*]

  def initialize 
    @answer = 0
    @question = ""
  end

  def generate_question
    num1 = ARR.sample
    num2 = ARR.sample
    operator = OPERATORS.sample
    
    @answer = num1.send(operator, num2)
    @question = "What is #{num1} #{operator} #{num2}?"

  end

  def is_correct?(input)
    if input != @answer
      puts "Huh? No, #{input} is wrong dude."
      # @score --
      false
    else
      puts "Yea, noice one."
      true
    end
  end

end




    






