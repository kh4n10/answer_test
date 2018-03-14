Given(/^The homepage has loaded$/) do
	@answer_site = AnswerSite.new

	@answer_site.answer_homepage.load
end

When(/^I click on the contact us link$/) do
	@answer_site.answer_homepage.click_contact_us
end

Then(/^The contact us form page has loaded$/) do
	expect(current_url).to eql 'http://www.answerdigital.com/contact.html'
end