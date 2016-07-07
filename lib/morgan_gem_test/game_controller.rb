module MorganGemTest
  class GameController
    OPTIONS = { "rock" => "scissors", "paper" => "rock",
                "scissors" => "paper" }
    def initialize
      prompt_for_mode
      play
    end

    def play
      @player_one.ask_move
      @player_two.ask_move
      compare_moves(@player_one, @player_two)
    end

    def prompt_for_mode
      puts 'Which mode would you like to play: "one player" "two player" '
      set_players(gets.chomp)
    end

    def set_players(mode)
      case mode
      when 'one player'
        @player_one = PlayerView.new(gets.chomp)
        @player_two = PlayerView.new(:computer)
      when 'two player'
        @player_one = PlayerView.new(gets.chomp)
        @player_two = PlayerView.new(gets.chomp)
      end
    end

    def compare_moves(first, second)
      if OPTIONS[first.move] == second.move
        puts 'Congrats first player wins!'
        abort
      elsif OPTIONS[second.move] == first.move
        puts 'Congrats second player wins!'
        abort
      else
        puts 'It was a tie!'
        abort
      end
    end
  end
end
