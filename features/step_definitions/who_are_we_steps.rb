Given(/^I am on the who are we page$/) do
	@answer_site = AnswerSite.new

	expect(current_url).to eql 'http://www.answerdigital.com/who-we-are.html'
end

When(/^I scroll to the what we are about section$/) do
	@answer_site.who_are_we_page.scroll_down_to_company_values
end

Then(/^All the companies values are displayed$/) do
	expect(@answer_site.who_are_we_page.core_values.visible?).to be true
	expect(@answer_site.who_are_we_page.find_heading.text).to eql "What we're about"
	# expect(@answer_site.who_are_we_page.find_heading.text).to eql "What were about"
	expect(@answer_site.who_are_we_page.find_company_value_one.text).to eql "A CATALYST FOR CHANGE"
	# expect(@answer_site.who_are_we_page.find_company_value_one.text).to eql "A catalyst FOR CHANGE"
	expect(@answer_site.who_are_we_page.find_company_value_two.text).to eql "NURTURATION"
	expect(@answer_site.who_are_we_page.find_company_value_three.text).to eql "PUT LOVE IN THE ROOM"
	expect(@answer_site.who_are_we_page.find_company_value_four.text).to eql "DO THE RIGHT THING IN THE RIGHT WAY"
	expect(@answer_site.who_are_we_page.find_company_value_five.text).to eql "NEVER STAND STILL"
end

When(/^I scroll to the answer atmosphere video$/) do
	@answer_site.who_are_we_page.scroll_down_to_answer_atmosphere_video
end

And(/^Click the play button$/) do
	@answer_site.who_are_we_page.atmosphere_video.click
end

Then(/^The video is playing$/) do
	sleep 5
	expect(page).not_to have_selector('.ytp-cued-thumbnail-overlay-image')
	# not sure if this test is robust enough, as there are 2 other thumbnail images with the exact same class name
end