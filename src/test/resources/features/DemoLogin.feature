@TRNS-349
Feature: 

	Background:
      #@TRNS-307
		Given the user is on the login page



	@TRNS-335
	Scenario Outline:  "Remember me" link exists and is clickable on the login page
		When the user enters valid credentials for each "<userType>"
		And the user clicks Remember me on this computer checkbox
		Then Remember me on this computer checkbox should be selected
		Examples:
			| userType      |
			| driver        |
			| store manager |
			| sales manager |
	#{color:#00875a}*User Story :* {color}
	#
	#As a user, I should be able to log in
	#
	# 
	#
	#{color:#ff8b00}*_Acceptance Criteria:_*{color}
	#
	#1-All users can log in with valid credentials (We have 3 types of users such as sales manager, store manager, truck driver).
	#     - Driver should land on the "Quick Launchpad" page after successful login
	#     - Sales Manager/ Store Manager should land on the "Dashboard" page after successful login
	#
	#2-"Invalid username or password." should be displayed for invalid (valid username-invalid password and invalid username-valid password) credentials
	#
	#3- "Please fill in this field" message should be displayed if the password or username is empty
	#
	#4-User land on the ‘Forgot Password’ page after clicking on the "Forgot your password?" link
	#
	#5-User can see "Remember Me" link exists and is clickable on the login page
	#
	#6-User should see the password in bullet signs by default
	#
	#7- Verify if the ‘Enter’ key of the keyboard is working correctly on the login page.
	@TRNS-308
	Scenario Outline: Different user types
		
		        When the user enters valid credentials for each "<userType>"
				And the user clicks login button
				Then the page subtitle is "<subtitle>"
				Examples:
				  | userType      | subtitle        |
				  | driver        | Quick Launchpad |
				  | store manager | Dashboard       |
				  | sales manager | Dashboard       |



	@TRNS-336
	Scenario Outline: verifying the password in bullet signs by default

		When the user enters valid credentials for each "<userType>"
		Then the user should see the password in bullet signs by default
		Examples:
			| userType      |
			| driver        |
			| store manager |
			| sales manager |
	#{color:#00875a}*User Story :* {color}
	#
	#As a user, I should be able to log in
	#
	# 
	#
	#{color:#ff8b00}*_Acceptance Criteria:_*{color}
	#
	#1-All users can log in with valid credentials (We have 3 types of users such as sales manager, store manager, truck driver).
	#     - Driver should land on the "Quick Launchpad" page after successful login
	#     - Sales Manager/ Store Manager should land on the "Dashboard" page after successful login
	#
	#2-"Invalid username or password." should be displayed for invalid (valid username-invalid password and invalid username-valid password) credentials
	#
	#3- "Please fill in this field" message should be displayed if the password or username is empty
	#
	#4-User land on the ‘Forgot Password’ page after clicking on the "Forgot your password?" link
	#
	#5-User can see "Remember Me" link exists and is clickable on the login page
	#
	#6-User should see the password in bullet signs by default
	#
	#7- Verify if the ‘Enter’ key of the keyboard is working correctly on the login page.
	@TRNS-309
	Scenario Outline: Login functions with invalid info for different users
		
		       When the user logs in using following credentials "<username>" and "<password>"
				Then the following "<message>" should be displayed
				Examples:
				  | username        | password    | message                        |
				  | user            | wrong       | Invalid user name or password. |
				  | user1           | 123         | Invalid user name or password. |
				  | user            | UserUser123 | Invalid user name or password. |
				  |                 |             | Please fill out this field.    |
				  |                 | UserUser123 | Please fill out this field.    |
				  | user1           |             | Please fill out this field.    |
				  | salesmanager101 | 123         | Invalid user name or password. |
				  | user            | UserUser123 | Invalid user name or password. |
				  |                 | UserUser123 | Please fill out this field.    |
				  | salesmanager101 |             | Please fill out this field.    |
				  | storemanager51  | 123         | Invalid user name or password. |
				  | user            | UserUser123 | Invalid user name or password. |
				  |                 | UserUser123 | Please fill out this field.    |
				  | storemanager51  |             | Please fill out this field.    | 	

	#{color:#00875a}*User Story :* {color}
	#
	#As a user, I should be able to log in
	#
	# 
	#
	#{color:#ff8b00}*_Acceptance Criteria:_*{color}
	#
	#1-All users can log in with valid credentials (We have 3 types of users such as sales manager, store manager, truck driver).
	#     - Driver should land on the "Quick Launchpad" page after successful login
	#     - Sales Manager/ Store Manager should land on the "Dashboard" page after successful login
	#
	#2-"Invalid username or password." should be displayed for invalid (valid username-invalid password and invalid username-valid password) credentials
	#
	#3- "Please fill in this field" message should be displayed if the password or username is empty
	#
	#4-User land on the ‘Forgot Password’ page after clicking on the "Forgot your password?" link
	#
	#5-User can see "Remember Me" link exists and is clickable on the login page
	#
	#6-User should see the password in bullet signs by default
	#
	#7- Verify if the ‘Enter’ key of the keyboard is working correctly on the login page.
	@TRNS-310
	Scenario: Navigating 'Forgot Password' page after clicking on the "Forgot your password?"link
		 
		        When the user clicks on Forgot your password link
				Then the user should land on "Forgot Password" page		

	#{color:#00875a}*User Story :* {color}
	#
	#As a user, I should be able to log in
	#
	# 
	#
	#{color:#ff8b00}*_Acceptance Criteria:_*{color}
	#
	#1-All users can log in with valid credentials (We have 3 types of users such as sales manager, store manager, truck driver).
	#     - Driver should land on the "Quick Launchpad" page after successful login
	#     - Sales Manager/ Store Manager should land on the "Dashboard" page after successful login
	#
	#2-"Invalid username or password." should be displayed for invalid (valid username-invalid password and invalid username-valid password) credentials
	#
	#3- "Please fill in this field" message should be displayed if the password or username is empty
	#
	#4-User land on the ‘Forgot Password’ page after clicking on the "Forgot your password?" link
	#
	#5-User can see "Remember Me" link exists and is clickable on the login page
	#
	#6-User should see the password in bullet signs by default
	#
	#7- Verify if the ‘Enter’ key of the keyboard is working correctly on the login page


	#{color:#00875a}*User Story :* {color}
	#
	#As a user, I should be able to log in
	#
	# 
	#
	#{color:#ff8b00}*_Acceptance Criteria:_*{color}
	#
	#1-All users can log in with valid credentials (We have 3 types of users such as sales manager, store manager, truck driver).
	#     - Driver should land on the "Quick Launchpad" page after successful login
	#     - Sales Manager/ Store Manager should land on the "Dashboard" page after successful login
	#
	#2-"Invalid username or password." should be displayed for invalid (valid username-invalid password and invalid username-valid password) credentials
	#
	#3- "Please fill in this field" message should be displayed if the password or username is empty
	#
	#4-User land on the ‘Forgot Password’ page after clicking on the "Forgot your password?" link
	#
	#5-User can see "Remember Me" link exists and is clickable on the login page
	#
	#6-User should see the password in bullet signs by default
	#
	#7- Verify if the ‘Enter’ key of the keyboard is working correctly on the login page.
	# 


	#{color:#00875a}*User Story :* {color}
	#
	#As a user, I should be able to log in
	#
	# 
	#
	#{color:#ff8b00}*_Acceptance Criteria:_*{color}
	#
	#1-All users can log in with valid credentials (We have 3 types of users such as sales manager, store manager, truck driver).
	#     - Driver should land on the "Quick Launchpad" page after successful login
	#     - Sales Manager/ Store Manager should land on the "Dashboard" page after successful login
	#
	#2-"Invalid username or password." should be displayed for invalid (valid username-invalid password and invalid username-valid password) credentials
	#
	#3- "Please fill in this field" message should be displayed if the password or username is empty
	#
	#4-User land on the ‘Forgot Password’ page after clicking on the "Forgot your password?" link
	#
	#5-User can see "Remember Me" link exists and is clickable on the login page
	#
	#6-User should see the password in bullet signs by default
	#
	#7- Verify if the ‘Enter’ key of the keyboard is working correctly on the login page.
	@TRNS-337
	Scenario Outline: Verifying 'Enter' key of the keyboard is working correctly on the login page
		
		When the user enters valid credentials for each "<userType>"
		And the user clicks Enter button of keyboard
		Then the page subtitle is "<subtitle>"
		        
		    Examples:
		    | userType      | subtitle        |
		    | driver        | Quick Launchpad |
		    | store manager | Dashboard       |
		    | sales manager | Dashboard       |
		