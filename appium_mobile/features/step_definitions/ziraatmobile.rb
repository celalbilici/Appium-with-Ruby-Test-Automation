

When(/^ziraat mobil uygulaması android bir cihaz uzerinden acılmış olsun$/) do |table|
  # table is a table.hashes.keys # => [:platformName, :Android]
  # HB0SVZ81
  table = Hash[table.raw]
  platform_adi = table['platformName']
  surum_version = table['platformVersion']
  seri_numarasi = table['deviceName']
  apk_paket_adi = table['appPackage']
  uygulama_yolu = table['app']
  activite_adi = table['appActivity']

  desired_capabilities = {
      caps: {
          platformName: platform_adi,
          platformVersion: surum_version,
          deviceName: seri_numarasi,
          appPackage: apk_paket_adi,
          app: uygulama_yolu,
          appActivity: activite_adi
      }
  }
  @driver = Appium::Driver.new(desired_capabilities, true)
  @driver.start_driver
  Appium.promote_appium_methods Object
  sleep 5
end


When(/^uygulama izni verilir ve "([^"]*)" butonuna tıklanır$/) do |arg|
  Appium::TouchAction.new.tap(x: 555, y: 810, count: 2).perform
  Appium::TouchAction.new.tap(x: 380, y: 556, count: 2).perform

  sleep 1
  #find_element(:id, "permission_allow_button").click
  # find_element(:id, "sign_in_button").click

end

When(/^uygulamaya aşağıdaki bilgilerle giriş yapılır$/) do |table|
  # table is a table.hashes.keys # => [:customerNo, :53637144]
  table = Hash[table.raw]
  customer_num = table['customerNo']
  password_1 = table['password1']
  password_2 = table['password2']

  find_element(:id, "idendity_number_edit").send_keys customer_num
  find_element(:id, "password_edit").send_keys password_1
  find_element(:id, "continue_button").click
  find_element(:id, "password_edit").click
  find_element(:id, "password_edit").clear
  find_element(:id, "password_edit").send_keys password_2
  find_element(:id, "continue_button").click

end

When(/^menu ikonuna tıklanır$/) do
  find_element(:id, "menu_button").click
end

When(/^"([^"]*)" sekmesine tıklanır$/) do |option|
  find_element(xpath: "//android.widget.TextView[@text='#{option}']").click
  sleep 1.5
end


When(/^geri dönmek için "([^"]*)" butonuna tıklanır$/) do |arg|
  find_element(accessibility_id: arg).click
  #driver.back
end

When(/^"([^"]*)" hesabı seçilir$/) do |arg|
  find_element(xpath: "//android.widget.TextView[@text='#{arg}']").click
  sleep 4
end

When(/^"([^"]*)" ne tıklanır$/) do |arg|
  find_element(:id, "account_activites_button").click
  sleep 0.5
end

When(/^"([^"]*)" ile "([^"]*)" tarihleri arası filtrelenir$/) do |start_date, end_date|
  find_element(:id, "account_history_filter_button").click
  find_element(:id, "edit_transaction_startdate").click
  find_element(:accessibility_id, start_date).click
  find_element(:id, "mdtp_ok").click
  find_element(:id, "edit_transaction_enddate").click
  find_element(:accessibility_id, end_date).click
  find_element(:id, "mdtp_ok").click

end

When(/^"([^"]*)" ile "([^"]*)" arası tutar filtrelenir$/) do |min_amount, max_amount|
  find_element(:id, "account_history_min_amount").clear
  find_element(:id, "account_history_min_amount").send_keys min_amount
  find_element(:id, "account_history_max_amount").clear
  find_element(:id, "account_history_max_amount").send_keys max_amount

end

When(/^işlem tipi "([^"]*)" seçilir$/) do |process_type|
  find_element(:id, "account_history_type_spinner").click
  find_element(xpath: "//android.widget.TextView[@text='#{process_type}']").click

end

When(/^"([^"]*)" butonuna tıklanır$/) do |arg|
 # find_element(xpath: "//android.widget.TextView[@text='#{arg}']").click
  find_element(:id, "button_continue").click
end

When(/^aktarılacak tutar alanına "([^"]*)" yazılır$/) do |amount|
  Appium::TouchAction.new.tap(x: 438, y: 1080, count: 2).perform
  sleep 1
  find_element(:xpath, "//android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.widget.LinearLayout[3]/android.view.View[2]/android.widget.FrameLayout/android.support.v7.widget.RecyclerView/android.support.v7.widget.LinearLayoutCompat/android.widget.FrameLayout/android.support.v7.widget.LinearLayoutCompat/android.widget.LinearLayout/android.widget.FrameLayout/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.EditText[1]").send_keys amount
  sleep 1
  find_element(:id, "button_continue").click
  find_element(xpath: "//android.widget.TextView[@text='Vadeli Hesabıma']").send_keys "appium test otomasyon deneme"
  find_element(:id, "button_continue").click
  find_element(xpath: "//android.widget.TextView[@text='Tüm Bakiyeyi Aktar']").click
  #android.support.v7.widget.LinearLayoutCompat/android.widget.LinearLayout/android.widget.FrameLayout/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.EditText[1]").send_keys "2500"
end

When(/^işlem onaylanır$/) do
 2.times {Appium::TouchAction.new.swipe(start_x: 0.5, start_y: 0.8, offset_x: 0.0, offset_y: -0.6, duration: 600).perform}
  sleep 1
 Appium::TouchAction.new.tap(x: 535, y: 1600, count: 2).perform


end