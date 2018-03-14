@on_who_are_we
Feature: I am on the who are we page, I can view the sections of interest

	Background:
		Given I am on the who are we page

	Scenario: I am on the who are we page I can view all the company values
		Given I am on the who are we page
		When I scroll to the what we are about section
		Then All the companies values are displayed

	Scenario: I am on the who are we page I can scroll down and click on the answer atmosphere video
		Given I am on the who are we page
		When I scroll to the answer atmosphere video
		And Click the play button
		Then The video is playing