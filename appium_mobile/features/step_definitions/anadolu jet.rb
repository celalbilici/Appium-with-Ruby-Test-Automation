When(/^menü içerisinden "([^"]*)" seçeneğine tıklanır$/) do |arg|
  Appium::TouchAction.new.tap(x: 949, y: 55, count: 1).perform
  find_element(:id, "button_menu").click
  find_element(xpath: "//android.widget.TextView[@text='#{arg}']").click
end

When(/^"([^"]*)" seçeneği tıklanır$/) do |arg|
  if arg == "tekyön"
    p "celal"
    find_element(:id, "rb_select_one_way").click
  else arg =="GİDİŞ - DÖNÜŞ"
  find_element(:id, "rb_select_two_ways").click
  end
  Appium::TouchAction.new.tap(x: 952, y: 52, count: 1).perform
end

When(/^bilet için "([^"]*)" seçeneği tıklanır ve "([^"]*)" havalanı seçilir$/) do |arg1, arg2|
  find_element(xpath: "//android.widget.TextView[@text='#{arg1}']").click
  Appium::TouchAction.new.tap(x: 952, y: 52, count: 1).perform
  find_element(:id, "searchEditText").click
  find_element(xpath: "//android.widget.TextView[@text='HAVALİMANI ARA']").set arg2
  find_element(xpath: "//android.widget.TextView[@text='#{arg2}']").click






end