# game_spec.rb

require 'spec_helper'
require 'game'

describe Game do
	describe "#score" do
		before :each do
			@game = Game.new
		end

		def rollMany(rolls, pins)
			(0..rolls-1).each { @game.roll(pins) }
		end


 		it "returns 0 for all gutter game" do
			20.times { @game.roll(0) }
			@game.score.should == 0
		end
		
		it "returns 20 for rolling all ones" do
			20.times { @game.roll(1) }
			@game.score.should == 20
		end

		it "returns 16 when rolling simple spare (5, 5, 3)" do
			rollMany(2, 5);
			@game.roll(3);
			rollMany(17, 0);
			@game.score.should == 16
		end

		it "returns 24 when rolling simple strike (10, 3, 4)" do
			@game.roll(10)
			@game.roll(3)
			@game.roll(4)
			rollMany(16, 0)
			@game.score.should == 24
		end

		it "returns 300 when rolling perfect game (20 strikes)" do
			rollMany(12, 10)
			@game.score.should == 300
		end
		
	end
end

			
