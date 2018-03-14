class Pages::ContactUsPage < SitePrism::Page

	element :error_list, ".form-error"

	def click_on_send_query
		click_button 'Send query'
	end

	def error_list_appears
		error_list
	end

	def contact_required
		page.find('li', :text => 'Contact is required')
	end

	def contact_invalid
		page.find('li', :text => 'Chosen contact is Invalid')
	end

	def enter_full_name
		fill_in('Fullname', :with => 'John Wick')
	end

	def enter_email
		fill_in('Email', :with => 'abassk2011@hotmail.com')
	end

	def enter_a_message
		fill_in('Query', :with => 'Am I testing the site appropriately?')
	end
end