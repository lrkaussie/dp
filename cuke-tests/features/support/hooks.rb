require 'page-object'
require 'watir-webdriver'
require 'page-object/page_factory'
require 'rspec'
require 'log4r'
require 'watir-webdriver/screenshot'
require 'cucumber'


Before do|scenario|



  ENV['HTTP_PROXY'] = ENV['http_proxy'] = nil





begin


  @browser = Watir::Browser.new :ff, :profile => 'default'
  @browser.window.maximize

  @browser.driver.manage.timeouts.implicit_wait = 300
  @browser.cookies.clear
  @browser.driver.manage.window.maximize



end




=begin
  #Replacing browser instantiation to use sauce labs gem
  #   for sauce lab execution- more doc https://github.com/machzqcq/saucelabs
  #, :switches => %w[ --disable-extensions --disable-popup-blocking --test-type]

  @caps = Selenium::WebDriver::Remote::Capabilities.chrome
  @caps["platform"] = 'OS X 10.10'

  @caps["name"] ="#{scenario.title}"
  @caps['version'] = '45'
  @caps["parent-tunnel"] = 'scests'

  @browser = Watir::Browser.new(
      :remote,
      :url => 'http://falcons:de50b203-e012-4cc9-969a-8379ae149e49@10.42.69.80:4448/wd/hub',
      :desired_capabilities => @caps)


=end

end


After  do

  #@browser.close

end

AfterStep('@screen') do

  filename = DateTime.now.strftime("%d%b%Y%H%M%S")

#  @browser.screenshot.save ("C:\Users\GDCUser\Documents\Lohit\Testing\Test Steps Screenshots/ #{filename}.png")

end



