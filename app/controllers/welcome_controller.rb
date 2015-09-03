class WelcomeController < ApplicationController

  @@playedlast = 0

  def index
  	@last = @@playedlast
  	@frequencies = [500, 1000, 2000, 3000, 4000, 5000, 6000, 7000, 8000, 10000, 12000]
  	until @playing != @last && @playing != nil do 
  		@playing = @frequencies.sample
  	end
  	@path = "https://s3-us-west-2.amazonaws.com/freqtrainer/" + @playing.to_s + ".mp3"
  	@@playedlast = @playing
  end

  def fail
  		@playing = @@playedlast
  end
end
