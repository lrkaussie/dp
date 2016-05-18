class Origins_homepage
  include PageObject
   page_url 'http://www.origins.com'

	def check_url
		if (@browser.url == "http://www.origins.com/")
		puts "Web site URL is correct"
		end
	end

	def check_page_load
	@ready= @browser.ready_state.eql? "complete"
		if (@ready ==true)
		puts "Page is loaded"		
		end
	end	

	def close_sign_up_box
		sleep(2)
		@browser.element(:id=>'cboxClose').click
	end

	def sign_in_click
		sleep(2)
		@browser.element(:css=>'body > div.page-wrapper > header > div.page-header__nav > div > div.page-header__nav__supplemental > div > div > div > div > a > span.mobile-hidden--inline.gnav_lyl > span.gnav_lyl_signin').click
	end

	def sign_in_box
		puts "sign in box is clicked"
	end

	def sign_in_page
		@browser.goto 'https://www.origins.com/account/signin.tmpl'
	end

	def email_add(email)
		Watir::Wait.until {@browser.text_field(:xpath=>'//*[@id="form--signin--field--EMAIL_ADDRESS"]')}.when_present.set(email)
	end

	def password(pass)
		Watir::Wait.until {@browser.text_field(:xpath=>'//*[@id="form--signin--field--PASSWORD"]')}.when_present.set(pass)
	end

	def sign_in_click_login
		Watir::Wait.until {@browser.button(:css=>'#signin > fieldset > div.form-item.return-user__item.form-button > input')}.when_present.click
	end

	def logged_in_user_check
		sleep(3)
		Watir::Wait.until {@browser.element(:class =>'account-utilities__greeting').text.include?("Welcome Back,")}.should==true
	end

	def search_button_click
		sleep(3)
		Watir::Wait.until {@browser.element(:xpath=>'/html/body/div[1]/header/div[1]/div/div[2]/div[2]/div/div/div[4]')}.when_present.click
	end

	def search_box_present
		Watir::Wait.until {@browser.element(:class =>'gnav-search__content').exists?}.should==true
	end

	def search_keyword(search_string)
		Watir::Wait.until {@browser.text_field(:class =>'gnav-search__field search-term search-term--header')}.when_present.set(search_string)
	end

	def autosuggest_box_present
		sleep(2)
		Watir::Wait.until {@browser.element(:css =>'#perlgem-search-form > div.gnav-search__suggestions-wrapper > div > div').exists?}.should==true
	end

	def click_on_product
		@product_url= @browser.element(:css =>'#perlgem-search-form > div.gnav-search__suggestions-wrapper > div > div > div > div > div.product-grid__item.js-grid-item.js-product-grid-item.first > div > a').value
		puts(@product_url)
		Watir::Wait.until {@browser.element(:css =>'#perlgem-search-form > div.gnav-search__suggestions-wrapper > div > div > div > div > div.product-grid__item.js-grid-item.js-product-grid-item.first > div')}.when_present.click
	end	

end
