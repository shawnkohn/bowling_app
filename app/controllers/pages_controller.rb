require 'game'

class PagesController < ApplicationController
  def score
		game = Game.new
		game.roll(5)
		game.roll(5)
		game.roll(3)
		17.times { game.roll(0) }
		@numFrames = game.score
  end
end
