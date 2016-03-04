class Movie < ActiveRecord::Base
	
	def self.movies(options)
	  self.order(options)
	end
end
