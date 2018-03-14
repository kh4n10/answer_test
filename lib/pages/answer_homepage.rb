class Pages::AnswerHomepage < SitePrism::Page

	set_url "http://www.answerdigital.com/"

	def click_contact_us
		click_link('Contact Us')
	end

	def click_who_are_we
		click_link('Who are we')
	end
end