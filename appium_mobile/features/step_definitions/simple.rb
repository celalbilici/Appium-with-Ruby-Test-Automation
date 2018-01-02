When(/^browserdan "([^"]*)" açılır$/) do |arg|
  desired_caps = {
      caps:  {
          platformName:  'Android',
          platformVersion: '7.0',
          deviceName: 'R28J613N0QZ',
          browserName: 'Chrome',
      }
  }
  @appium_driver =Appium::Driver.new(desired_caps ,  true)
  @selenium_driver=@appium_driver.start_driver
  Appium.promote_appium_methods Object
  @selenium_driver.get("http://www.google.com")
  #searchBox  id='lst_ib'
   element=@selenium_driver.find_element(name: 'q')
  element.click
  element.send_keys 'ziraat bankası'
  element.send_keys :enter
  #search button id="tsbb"
  # element=@selenium_driver.find.element(name: 'btnG')
  # element.click
  sleep 3
  driver.quit


  # desired_caps = {
  #     caps:  {
  #         platformName:  'Android',
  #         platformVersion: '5.1',
  #         deviceName: 'Nexus_5_API_22_x86',
  #         browserName: 'Browser',
  #     }
  # }
  # @appium_driver =Appium::Driver.new(desired_caps ,  true)
  # @selenium_driver=@appium_driver.start_driver
  # Appium.promote_appium_methods Object
  # # Appium.promote_appium_methods RSpec::Core::ExampleGroup
  # # Appium.promote_appium_methods Minitest::Spec

  # require 'selenium-webdriver'
  #
  # @selenium_driver.get("http://www.google.com/")
  # sleep 3
  # #searchBox  id='lst_ib'
  # element=find_element(:id,'lst_ib')
  # sleep 3
  # element.click
  # sleep 2
  # element.send_keys 'ziraat bankası'
  # #search button id="tsbb"
  # element=find.element(:id, 'tsbb')
  # element.click
  # sleep 5
  # driver.quit

end

When(/^arama motoruna "([^"]*)" yazılıp tıklanır$/) do |arg|
  sleep 2
  # element=find_element(:class, 'before-login-button')
  # element.click

 #searchBox  id='lst_ib'
 element=find_element(:id,'lst_ib')
 element.click
 element.send_keys 'arg'
 #search button id="tsbb"
 element=find.element(:id, 'tsbb')
 element.click
 sleep 5

end