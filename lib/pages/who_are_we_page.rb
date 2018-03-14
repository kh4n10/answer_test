class Pages::WhoAreWePage < SitePrism::Page

	element :values, ".core-row"
	# cant use the xpath for the div which video is in as each time a session is created it generates a unique xpath
	# element :atmosphere_video, :xpath, '//*[@id="player_uid_681501320_1"]/div[4]/div'
	# //*[@id="player_uid_55317468_1"]/div[4]/div

	# the div image for the video can not be found due to the classes being all the same
	element :video, "#answerDigitalVideo"
	# element :video_playing, ".ytp-cued-thumbnail-overlay-image"
	# cant use the xpath for the button on the video as each time a session is created it generates a unique xpath
	# element :atmosphere_video, :xpath, '//*[@id="player_uid_807623343_1"]/div[4]/button'
	# //*[@id="player_uid_366861057_1"]/div[4]/button

	def find_heading
		page.find('.center', :text => "What we're about")
	end

	def core_values
		values
	end

	def find_company_value_one
		page.find('.text-two-5', :text => "A CATALYST FOR CHANGE")
	end

	def find_company_value_two
		page.find('.text-two-5', :text => "NURTURATION")
	end

	def find_company_value_three
		page.find('.text-two-5', :text => "PUT LOVE IN THE ROOM")
	end

	def find_company_value_four
		page.find('.text-two-5', :text => "DO THE RIGHT THING IN THE RIGHT WAY")
	end

	def find_company_value_five
		page.find('.text-two-5', :text => "NEVER STAND STILL")
	end

	def scroll_down_to_company_values
		page.execute_script "window.scrollBy(0,500)"
	end

	def scroll_down_to_answer_atmosphere_video
		page.execute_script "window.scrollBy(0,1000)"
	end

	def atmosphere_video
		# page.execute_script("$('#answerDigitalVideo')")
		video
	end

	# def video_is_playing
	# 	first('.ytp-cued-thumbnail-overlay-image')
	# 	video_playing
	# 	page.find('.ytp-time-duration', :text => "6:00")
	# end
end