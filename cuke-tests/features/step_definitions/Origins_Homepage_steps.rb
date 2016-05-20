Given(/^I am on the Origins Home Page$/) do
  visit(Origins_homepage)
end

When(/^I type www\.origins\.com in the address bar$/) do
  on(Origins_homepage).check_url	
end

Then(/^I can see that all the elements are loaded on the page$/) do
  on(Origins_homepage).check_page_load
end

And(/^I close the sign up box$/) do
 on(Origins_homepage).close_sign_up_box
end

When(/^I click on the sign in link on the home page$/) do
  on(Origins_homepage).sign_in_click
end

Then(/^I can see the sign in box$/) do
  on(Origins_homepage).sign_in_box
end

Then(/^I go to the sign in page$/) do                                         
  on(Origins_homepage).sign_in_page
end                                                                           

Then(/^I enter email address$/) do
  on(Origins_homepage).email_add 'lkotian@estee.com'
end

Then(/^I enter password$/) do
  on(Origins_homepage).password 'estee123'
end

Then(/^I click on sign in button$/) do
  on(Origins_homepage).sign_in_click_login
end

Then(/^I verify than I am logged in to the Origins site$/) do
  on(Origins_homepage).logged_in_user_check
end


When(/^I click on search button$/) do                                        
  on(Origins_homepage).search_button_click
end                                                                          
                                                                             
Then(/^I can see the search box$/) do                                        
  on(Origins_homepage).search_box_present
end                                                                          
                                                                             
Then(/^I search for the keyword "([^"]*)"$/) do |arg1|                       
  on(Origins_homepage).search_keyword arg1
end                                                                          
                                                                             
Then(/^I should see autosuggested products$/) do                             
  on(Origins_homepage).autosuggest_box_present
end                                                                          
                                                                             
Then(/^I click on the product$/) do                                          
  on(Origins_homepage).click_on_product
end                                                                          
                                                                             
Then(/^I should be redirected to the "([^"]*)" product page$/) do |arg1|     
  on(Origins_homepage).display_product_page
end

When(/^I click on the Terms & Conditions footer link$/) do 
  on(Origins_homepage).footer_link_click
end

Then(/^I navigate to the Terms & Conditions page$/) do
  on(Origins_homepage).footer_link_page
end                                                                          