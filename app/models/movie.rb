class Movie < ActiveRecord::Base

	def self.movies(filter, options)
      return self.order(options) if not filter
	  self.where({:rating => filter.keys}).order(options)
	end

	def self.ratings
	  self.pluck(:rating).uniq
	end
end
