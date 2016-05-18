Feature: Origins HomePage Scenario
     In order to check whether the homepage loads
     As a end-user
     I want to see that the homepage loads
   
@elements
Scenario: Homepage browse and check all elements loaded
	Given I am on the Origins Home Page
	When I type www.origins.com in the address bar
	Then I can see that all the elements are loaded on the page

@signin
Scenario: User can sign in to the homepage
	Given I am on the Origins Home Page
	And I close the sign up box
	When I click on the sign in link on the home page
	Then I can see the sign in box
	And I go to the sign in page
	And I enter email address
	And I enter password
	And I click on sign in button
	Then I verify than I am logged in to the Origins site

@search
Scenario: User can search for a product from homepage
    Given I am on the Origins Home Page
    And I close the sign up box
    When I click on search button
    Then I can see the search box
    And I search for the keyword "lipstick"
    Then I should see autosuggested products
    And I click on the product
    #Then I should be redirected to the "lipstick" product page