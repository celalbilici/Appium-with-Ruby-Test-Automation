When(/^uygulama android bir cihaz uzerinden acılmış olsun$/) do |table|
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
end



When(/^uygulamadaki default gelen tüm tasklardaki chexboxların unchecked oldugu gorulur\.$/) do
  missionbox1 = find_element(xpath: "//android.widget.LinearLayout[1]/android.widget.CheckBox")
  if(missionbox1.attribute("checked")== "true" )
    missionbox1.click()
  end
  missionbox2 = find_element(xpath: "//android.widget.LinearLayout[2]/android.widget.CheckBox")
  if(missionbox2.attribute("checked")== "true")
    missionbox1.click()
  end
  missionbox3 = find_element(xpath: "//android.widget.LinearLayout[3]/android.widget.CheckBox")
  if(missionbox3.attribute("checked")== "true")
    missionbox3.click()
  end
  missionbox4 = find_element(xpath: "//android.widget.LinearLayout[4]/android.widget.CheckBox")
  if(missionbox4.attribute("checked")== "true")
    missionbox4.click()
  end
  missionbox5 = find_element(xpath: "//android.widget.LinearLayout[5]/android.widget.CheckBox")
  if(missionbox5.attribute("checked")== "true")
    missionbox5.click()
  end


end

When(/^gorev listesinden "([^"]*)" silinir$/) do |name|
  find_element(xpath: "//android.widget.TextView[@text='#{name}']").click
  find_element(id: "action_delete").click
end

When(/^gorev listesinden "([^"]*)" check edilip tekrar unchecked hale getirilir$/) do |name|
  find_element(xpath: "//android.widget.TextView[@text='#{name}']").click
  find_element(id: "checkbox").click
  find_element(id: "checkbox").click
  go_back=find_element(accessibility_id: "Yukarı git")
  go_back.click


end