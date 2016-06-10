Feature: Origins Stage Drupal Node Creation 
  In order to check whether as a user I can create nodes

@createpage
Scenario: User can create page node for Origins Stage
	Given I am on the Origins STAGE Drupal site URL
    And I can see that all the elements are loaded on the page
    When I click on Login in button