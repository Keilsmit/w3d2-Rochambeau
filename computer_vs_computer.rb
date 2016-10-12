class Game
  attr_accessor :computer1, :computer2, :rock_total, :scissors_total, :paper_total, :draw_total

  def initialize
    self.computer1 = ""
    self.computer2 = ""
    self.rock_total = 0
    self.scissors_total = 0
    self.paper_total = 0
    self.draw_total =0
  end



  def play

      self.computer1 = %w(rock paper scissors).sample
      self.computer2 = %w(rock paper scissors).sample

      puts "rock: #{self.rock_total}"
      puts "scissors: #{self.scissors_total}"
      puts "paper: #{self.paper_total}"
      puts "draw: #{self.draw_total}"

        if computer1 == "rock"
            if computer2 == "paper"
              self.paper_total += 1
            elsif computer2 == "scissors"
              self.rock_total += 1
            else
              self.draw_total += 1
            end
        end
        # IF/ELSE STATEMENT ENDS

        if computer1 == "scissors"
            if computer2 == "paper"
                  self.scissors_total += 1
            elsif computer2 == "rock"
                  self.rock_total += 1
            else
                self.draw_total += 1
            end
        end
        # IF/ELSE STATEMENT ENDS


        if computer1 == "paper"
            if computer2 == "rock"
              self.paper_total += 1
            elsif computer2 == "scissors"
              self.scissors_total += 1
            else
              self.draw_total += 1
            end
        end
        # IF/ELSE STATEMENT ENDS
  end
    # play ENDS HERE


    # results_array = [{rock => rock_total, scissors => scissors_total, paper => paper_total, draw => raw_total]}.
    # puts results_array
    # need to find winning total and coresponding hash key and puts results....


end
# Game Class ends here


game = Game.new
1000.times{game.play}
