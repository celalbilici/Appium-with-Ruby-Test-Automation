When(/^cihazdan "([^"]*)" açılır$/) do |arg|
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
  # Appium.promote_appium_methods RSpec::Core::ExampleGroup
  # Appium.promote_appium_methods Minitest::Spec

  require 'selenium-webdriver'

  @selenium_driver.get("http://www.google.com/")
  sleep 3
  #searchBox  id='lst_ib'
  element=find_element(id: "lst_ib")
  sleep 3
  element.click
  sleep 2
  element.send_keys 'ziraat bankası'
  #search button id="tsbb"
  element=find.element(id: "tsbb")
  element.click
  sleep 5
  driver.quit
end

When(/^cihazdan ziraat apk sı açılır$/) do
  desired_caps = {
      caps: {
          platformName: 'Android',
          platformVersion: '7.0',
          deviceName: 'R28J613N0QZ',
          appPackage: 'com.ziraat.ziraatmobil',
          app: 'C:\Users\LENOVO\Desktop\Ziraat Mobil_com.ziraat.ziraatmobil 1 1.apk',
      }
  }
  @driver = Appium::Driver.new(desired_caps, true)
  @driver.start_driver
  Appium.promote_appium_methods Object

find_element(id: "com.ziraat.ziraatmobil:id/tv_campaigns").click



end


