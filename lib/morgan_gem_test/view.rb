module MorganGameTest
  class PlayerView

    def initialize(name)
      case name
      when String
        @name = name
        @mode = :human
      when Symbol
        @mode = :computer
      end
    end

    def ask_move
      case @mode
      when :human
        puts "What's your move? (rock, paper scissors)"
        @move = gets.chomp
      when :computer
        %w(rock paper scissors).sample
      end
    end
  end
end
