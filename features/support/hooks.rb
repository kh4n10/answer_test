Before('@on_contact_form') do
	@answer_site = AnswerSite.new

	@answer_site.answer_homepage.load
	@answer_site.answer_homepage.click_contact_us
end

Before('@on_who_are_we') do
	@answer_site = AnswerSite.new

	@answer_site.answer_homepage.load
	@answer_site.answer_homepage.click_who_are_we
end

After do
	Capybara.current_session.driver.quit
end