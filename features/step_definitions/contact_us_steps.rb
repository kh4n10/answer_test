Given(/^I am on the contact us page$/) do
	@answer_site = AnswerSite.new

	expect(current_url).to eql 'http://www.answerdigital.com/contact.html'
end

When(/^I click the send query button whilst the form is empty$/) do
	@answer_site.contact_us_page.click_on_send_query
end

Then(/^I am told which fields I have to populate$/) do
	expect(@answer_site.contact_us_page.error_list_appears.visible?).to be true
	expect(page).to have_css('li', :text => 'Fullname is required')
	expect(page).to have_css('li', :text => 'Email is required')
	expect(page).to have_css('li', :text => 'Contact is required')
	expect(page).to have_css('li', :text => 'Chosen contact is Invalid')
end

When(/^I fill the name field$/) do
	@answer_site.contact_us_page.enter_full_name
end

And(/^Email field$/) do
	@answer_site.contact_us_page.enter_email
end

And(/^Write a message$/) do
	@answer_site.contact_us_page.enter_a_message
end

And(/^Click on the send query button$/) do
	@answer_site.contact_us_page.click_on_send_query
	expect(@answer_site.contact_us_page.error_list_appears.visible?).to be true
	# expect(@answer_site.contact_us_page.error_list_appears.visible?).to be false
end

Then(/^I get the error messages for the remaining fields which are required to be populated$/) do
	expect(@answer_site.contact_us_page.contact_required.text).to eql 'Contact is required'
	# expect(@answer_site.contact_us_page.contact_required.text).to eql 'Email is required'
	expect(@answer_site.contact_us_page.contact_invalid.text).to eql 'Chosen contact is Invalid'
end