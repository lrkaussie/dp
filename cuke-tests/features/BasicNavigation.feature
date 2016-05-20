Feature: Origins STAGE Drupal Login Scenario
     In order to check whether the user can navigate to different pages into Origins SATGE Drupal environment

@BasicNavigation
Scenario: User can navigate to all the pages in the Origins STAGE Drupal after Login
    Given I am on the Origins STAGE Drupal site URL
    And I can see that all the elements are loaded on the page
    When I click on Login in button
    And I enter User name for the Drupal login to Origin
    And I enter password for the Drupal login to Origin
    And I click on Login button for the Drupal Origin site
    And I can see that all the elements are loaded on the page
    Then I verify that I am logged in to the Origins Drupal site
    And I click Find Content tab
    And I can see that all the elements are loaded on the page 
    Then I can see the Find Content page loaded correctly
    And I click Add Content tab
    And I can see that all the elements are loaded on the page 
    Then I can see the Add Content page loaded correctly
    And I click Structure tab
    And I can see that all the elements are loaded on the page 
    Then I can see the Structure page loaded correctly
    And I click Configuration tab
    And I can see that all the elements are loaded on the page 
    Then I can see the Configuration page loaded correctly