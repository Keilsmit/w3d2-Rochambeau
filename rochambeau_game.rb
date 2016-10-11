

class Game
  attr_accessor :player_one_choice, :computer

  def initialize
    self.player_one_choice = ""
    self.computer = %w(rock paper scissors).sample
  end







  def play
    puts "Hi. Let's play Paper, Rock, Siccors."
    puts "I already made my selection."
    puts "Its your turn. Select: rock, paper or scissors"

    self.player_one_choice = gets.downcase.chomp

    game_outcome
  end
  # Play ends here

    def game_outcome
     outcome = " Player: #{player_one_choice.upcase} vs  Computer: #{computer.upcase} "
        if player_one_choice == "rock"
            if computer == "paper"
              outcome << "--Computer Wins!"
            elsif computer == "scissors"
              outcome << "--Player Wins!"
            else
              outcome << "--Draw!"
            end
        end

        if player_one_choice == "scissors"
            if computer == "paper"
                  outcome << "--Player Wins!"
            elsif computer == "rock"
                  outcome << "--Computer Wins!"
            else
                outcome << "--Draw!"
            end
        end

        if player_one_choice == "paper"
            if computer == "rock"
              outcome << "--Player Wins!"
            elsif computer == "scissors"
              outcome << "--Computer Wins!"
            else
              outcome << "--Draw!"
            end
        end
      puts outcome
    end
    # game_outcume ENDS here





end
# Game Class ends here


game = Game.new
game.play
