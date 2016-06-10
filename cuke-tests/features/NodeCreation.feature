Feature: Origins Stage Drupal Node Creation 
  In order to check whether as a user I can create nodes

@createpage
Scenario: User can create page node for Origins Stage
    Given I am on the Origins STAGE Drupal site URL
    And I can see that all the elements are loaded on the page
    When I click on Login in button
    And I enter User name for the Drupal login to Origin
    And I enter password for the Drupal login to Origin
    And I click on Login button for the Drupal Origin site
    And I can see that all the elements are loaded on the page
    Then I verify that I am logged in to the Origins Drupal site
    And I click Add Content tab
    And I can see that all the elements are loaded on the page 
    Then I can see the Add Content page loaded correctly
    And I click on the Page link
    Then I can see the Create page loaded correctly
    And I click on expand to add new item in pc content
    And I click on the drop-down for layout template
    And I select a layout template 
    