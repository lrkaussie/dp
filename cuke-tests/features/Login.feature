Feature: Origins STAGE Drupal Login Scenario
     In order to check whether the user can login into Origins STAGE Drupal environment
     
@signin
Scenario: User can sign in to the Origins STAGE Drupal site homepage
	Given I am on the Origins STAGE Drupal site URL
	And I can see that all the elements are loaded on the page
	When I click on Login in button
	And I enter User name for the Drupal login to Origin
	And I enter password for the Drupal login to Origin
	And I click on Login button for the Drupal Origin site
	And I can see that all the elements are loaded on the page
	Then I verify that I am logged in to the Origins Drupal site