require "morgan_gem_test/version"
require "morgan_gem_test/player_view"
require "morgan_gem_test/game_controller"

module MorganGemTest
  def self.play
	puts "Hullo"
    GameController.new
  end
end
