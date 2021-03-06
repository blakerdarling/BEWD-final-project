class Catch < ActiveRecord::Base
	belongs_to :user
	belongs_to :species

	def forecast
		if zip_code.blank?
			"n/a"
		else 
			weather = ForecastIO.forecast(zip_code.to_lat, zip_code.to_lon, time: created_at.to_i)
			if weather.blank?
				"n/a"
			else 
				weather.currently.summary
			end	
		end
	end
end
