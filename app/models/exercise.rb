class Exercise < ApplicationRecord
	has_many :workout_sessions, through: :workout_session_exercise
	# require 'rest-client'



	#Biceps
	# fetch = RestClient.get('https://wger.de/api/v2/exercise/?muscles=1&license_author=wger.de&language=2')
	# parsed_fetch = JSON.parse(fetch)

	#Back
	# RestClient.get('https://wger.de/api/v2/exercise/?muscles=9&license_author=wger.de&language=2')
	#
	# #Shoulder
	# RestClient.get('https://wger.de/api/v2/exercise/?muscles=2&license_author=wger.de&language=2')
	# #Abs
	# RestClient.get('https://wger.de/api/v2/exercise/?muscles=6&license_author=wger.de&language=2')
	#
	# #Chest
	# RestClient.get('https://wger.de/api/v2/exercise/?muscles=4&license_author=wger.de&language=2')
	# #Triceps
	# RestClient.get('https://wger.de/api/v2/exercise/?muscles=5&license_author=wger.de&language=2')
	#
	# #Legs
	# RestClient.get('https://wger.de/api/v2/exercise/?muscles=10&license_author=wger.de&language=2')
	# #Calves
	# RestClient.get('https://wger.de/api/v2/exercise/?muscles=7&license_author=wger.de&language=2')


end
