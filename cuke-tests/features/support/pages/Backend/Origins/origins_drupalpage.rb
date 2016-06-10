class Origins_drupal_page
	include PageObject
	 page_url 'https://e.origins.na.us.stage.ncsa.elcdev.net/'

def login_click
	Watir::Wait.until {@browser.element(:css=>'#toolbar-user > li > a')}.when_present.click
end

def enter_username(username)
	Watir::Wait.until {@browser.text_field(:id=>'edit-name')}.when_present.set(username)
end

def enter_pass(pass)
	Watir::Wait.until {@browser.text_field(:id=>'edit-pass')}.when_present.set(pass)
end

def login_button_click
	Watir::Wait.until {@browser.button(:id=>'edit-submit')}.when_present.click
end

def logged_in_user_verification
	Watir::Wait.until {@browser.element(:class =>'page-title').text.include?("Dashboard")}.should==true
end

def find_content_click
	Watir::Wait.until {@browser.element(:id=>'toolbar-link-admin-content')}.when_present.click
end

def find_content_validation
	Watir::Wait.until {@browser.element(:class =>'page-title').text.include?("Content")}.should==true
end

def add_content_click
	Watir::Wait.until {@browser.element(:id=>'toolbar-link-admin-add-content')}.when_present.click
end

def add_content_validation
	Watir::Wait.until {@browser.element(:class =>'page-title').text.include?("Add content")}.should==true
end

def structure_click
	Watir::Wait.until {@browser.element(:id=>'toolbar-link-admin-structure')}.when_present.click
end

def structure_validation
	Watir::Wait.until {@browser.element(:class =>'page-title').text.include?("Structure")}.should==true
	Watir::Wait.until {@browser.element(:css =>'#block-system-main > div').text.include?("You do not have any administrative items")}.should==true
end

def configuration_click
	Watir::Wait.until {@browser.element(:id=>'toolbar-link-admin-config')}.when_present.click
end

def configuration_validation
	Watir::Wait.until {@browser.element(:class =>'page-title').text.include?("Configuration")}.should==true
end

def click_page_create
	Watir::Wait.until {@browser.element(:xpath=>'//*[@id="block-system-main"]/div/ul/li[9]/span/a')}.when_present.click
end

def create_page_validation
	Watir::Wait.until {@browser.element(:class =>'page-title').text.include?("Create Page")}.should==true
end

def click_expand_add_item
	Watir::Wait.until {@browser.element(:xpath=>'//*[@id="edit-field-content-und-0"]/legend/span/a')}.when_present.click
end

def click_drop_down_layout
	Watir::Wait.until {@browser.element(:xpath=>'//*[@id="edit-field-content-und-0-template-name"]')}.when_present.click
end

def select_layout_template(temp_value)
	Watir::Wait.until {@browser.select_list(:xpath=>'//*[@id="edit-field-content-und-0-template-name"]')}.when_present.select_value(temp_value)
end

end
