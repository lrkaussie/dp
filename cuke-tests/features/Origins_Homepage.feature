Feature: Origins HomePage Scenario
     In order to check whether the homepage loads
     As a end-user
     I want to see that the homepage loads
   
Scenario: Homepage browse and check all elements loaded
	Given I am on the Origins Home Page
	When I type www.origins.com in the address bar
	Then I can see that all the elements are loaded on the page
     
