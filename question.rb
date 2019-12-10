class Question

  ARR = *(1..20)
  OPERATORS = ['+', '-', '/', '*']

  def initialize 
    self.answer = 0
    self.question = ""
  end

  def generate_question
    num1 = ARR.sample
    num2 = ARR.sample
    operator = OPERATORS.sample
    
    self.question = "What is #{num1} #{operator} #{num2}? To two decimal places if necessary"

    self.answer = "#{}"
  end

  def is_correct?(input)
    if input != answer
      puts "Huh? No, #{input} is wrong dude."
      false
    else
      puts "Yea, noice one."
      true
    end
  end

end




    






