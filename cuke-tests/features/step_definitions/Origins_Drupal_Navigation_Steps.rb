Then(/^I click Find Content tab$/) do                                        
  on(Origins_drupal_page).find_content_click
end                                                                          
                                                                             
Then(/^I can see the Find Content page loaded correctly$/) do                
  on(Origins_drupal_page).find_content_validation
end                                                                          
                                                                             
Then(/^I click Add Content tab$/) do                                         
  on(Origins_drupal_page).add_content_click
end                                                                          
                                                                             
Then(/^I can see the Add Content page loaded correctly$/) do                 
  on(Origins_drupal_page).add_content_validation
end                                                                          
                                                                             
Then(/^I click Structure tab$/) do                                           
  on(Origins_drupal_page).structure_click
end                                                                          
                                                                             
Then(/^I can see the Structure page loaded correctly$/) do                   
  on(Origins_drupal_page).structure_validation
end                                                                          
                                                                             
Then(/^I click Configuration tab$/) do                                       
  on(Origins_drupal_page).configuration_click
end                                                                          
                                                                             
Then(/^I can see the Configuration page loaded correctly$/) do               
  on(Origins_drupal_page).configuration_validation
end

                                                                         