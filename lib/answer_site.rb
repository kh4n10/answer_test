class AnswerSite

	def answer_homepage
		Pages::AnswerHomepage.new
	end

	def contact_us_page
		Pages::ContactUsPage.new
	end

	def who_are_we_page
		Pages::WhoAreWePage.new
	end

end