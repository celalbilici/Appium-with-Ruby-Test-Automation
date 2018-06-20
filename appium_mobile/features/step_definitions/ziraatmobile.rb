When(/^ziraat mobil uygulaması android bir cihaz uzerinden acılmış olsun$/) do |table|
  # table is a table.hashes.keys # => [:platformName, :Android]
  # HB0SVZ81
  table = Hash[table.raw]
  platform_adi  = table['platformName']
  surum_version = table['platformVersion']
  seri_numarasi = table['deviceName']
  apk_paket_adi = table['appPackage']
  uygulama_yolu = table['app']
  activite_adi  = table['appActivity']

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
  sleep 20
end


When(/^uygulama izni verilir ve "([^"]*)" butonuna tıklanır$/) do |arg|
  find_element(:id, "permission_allow_button").click
  find_element(:id, "sign_in_button").click
end

When(/^uygulamaya aşağıdaki bilgilerle giriş yapılır$/) do |table|
  # table is a table.hashes.keys # => [:customerNo, :53637144]
  table = Hash[table.raw]
  musteriNo = table['customerNo']
  sifre1 = table['password1']
  sifre2 = table['password2']

  find_element(:id, "idendity_number_edit").send_keys musteriNo
  find_element(:id, "password_edit").send_keys sifre1
  find_element(:id, "continue_button").click
  find_elements(:id, "password_edit").clear
  find_elements(:id, "password_edit").send_keys sifre2
  find_element(:id, "continue_button").click

end

