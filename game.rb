require_relative 'question.rb'
require_relative 'player.rb'

class Game 

  def start_game
    print "Please enter Player 1's name: "
    p1_name = gets.chomp
    print "Please enter Player 2's name: "
    p2_name = gets.chomp
    @player1 = Player.new(p1_name)
    @player2 = Player.new(p2_name)
    @current_player = @player1

    
    puts "==== GAME BEGINS! ===="
    puts " "
    until @player1.is_defeated? || @player2.is_defeated?
      puts "==== NEW TURN ===="  
      @question = Question.new
      puts "#{@current_player.name}: " + @question.generate_question
      input = gets.chomp.to_i
      @res = @question.is_correct?(input)

      if !@res
        @current_player.wrong_answer
      end
        

      puts "SCORES"
      puts "#{@player1.name} #{@player1.score}/3 vs #{@player2.name} #{@player2.score}/3"
      @current_player == @player1 ? @current_player = @player2 : @current_player = @player1
      puts " "
    end
    puts "==== GAME OVER ===="

  end

end 



# def call
#   current_player = players.shift
#   # toggle between 1 ans 2
#   question = Question.new
#   puts question.generate_question

  
#   if end_condition
#     end_game
#   else
#     players.push(player)
#     call
#   end


