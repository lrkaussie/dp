Then(/^I click on the Page link$/) do
  on(Origins_drupal_page).click_page_create
end

Then(/^I can see the Create page loaded correctly$/) do
  on(Origins_drupal_page).create_page_validation
end

Then(/^I click on expand to add new item in pc content$/) do                 
  on(Origins_drupal_page).click_expand_add_item
end

And(/^I click on the drop-down for layout template$/) do                 
  on(Origins_drupal_page).click_drop_down_layout
end

And(/^I select a layout template$/) do                 
  on(Origins_drupal_page).select_layout_template 'Basic - v1'
end                                                                            