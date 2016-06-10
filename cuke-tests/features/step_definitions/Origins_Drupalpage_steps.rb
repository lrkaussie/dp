Given(/^I am on the Origins STAGE Drupal site URL$/) do                      
  visit(Origins_drupal_page)
end                                                                          
                                                                             
When(/^I click on Login in button$/) do
  on(Origins_drupal_page).login_click
end

And(/^I enter User name for the Drupal login to Origin$/) do
  on(Origins_drupal_page).enter_username 'Test Content Editor'
end

And(/^I enter password for the Drupal login to Origin$/) do
  on(Origins_drupal_page).enter_pass 'changeme'
end

And(/^I click on Login button for the Drupal Origin site$/) do               
  on(Origins_drupal_page).login_button_click
end                                                                           

Then(/^I verify that I am logged in to the Origins Drupal site$/) do          
  on(Origins_drupal_page).logged_in_user_verification
end                                                                           