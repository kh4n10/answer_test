@on_contact_form
Feature: On the contact form page, I can fill out the form and send my query
	
	Background:
		Given I am on the contact us page

	Scenario: Click on the send query button without filling the form fields and checking if all the error messages are brought up

		Given I am on the contact us page
		When I click the send query button whilst the form is empty
		Then I am told which fields I have to populate

	Scenario: Fill out Name and email fields only, click on the send query button and check if the error messages for the fields which have not been populated come up

		Given I am on the contact us page
		When I fill the name field
		And I fill the email field
		And Click on the send query button
		Then I get the error messages for the remaining fields which are required to be populated

	Scenario: Fill out name , email and message but do not select who is the query for and assert error message
		Given I am on the contact us page
		When I fill the name field
		And I fill the email field
		And Write a message
		And Click on the send query button
		Then I get the error messages for the remaining fields which are required to be populated