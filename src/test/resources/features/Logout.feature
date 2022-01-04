@TRNS-352
Feature: 

	Background:
		#@TRNS-307
		Given the user is on the login page
		

	#{color:#00875a}*User Story :* {color}
	#
	#As a user, I should be able to log out
	#
	# 
	#
	#{color:#ff8b00}*_Acceptance Criteria:_*{color}
	#
	#1- User can log out by using the log out button inside profile info
	#2-User can not go to the homepage again by clicking step back button after successfully logged out
	# 
	@TRNS-350
	Scenario Outline: Log out as a different user types
		        When the user enters valid credentials for each "<userType>"
				And the user clicks login button
				When the user clicks on logout link under username
				Then the user should land on "Login" page
				Examples:
				  | userType      |
				  | driver        |
				  | store manager |
				  | sales manager |		

	#{color:#00875a}*User Story :* {color}
	#
	#As a user, I should be able to log out
	#
	# 
	#
	#{color:#ff8b00}*_Acceptance Criteria:_*{color}
	#
	#1- User can log out by using the log out button inside profile info
	#2-User can not go to the homepage again by clicking step back button after successfully logged out
	# 
	@TRNS-351
	Scenario Outline: Log out and navigate back as a different user types
		        When the user enters valid credentials for each "<userType>"
				And the user clicks login button
				When the user clicks on logout link under username
				Then the user should land on "Login" page
				When the user clicks step back button
				Then the user should land on "Login" page
				Examples:
				  | userType      |
				  | driver        |
				  | store manager |
				  | sales manager |