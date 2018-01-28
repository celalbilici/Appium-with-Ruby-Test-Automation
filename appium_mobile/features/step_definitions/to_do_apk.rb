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


When(/^menuden "([^"]*)" başlığı seçilir ve "([^"]*)" açiklama kısmı aşağıdaki gibi güncellenir$/) do |taskname, explanation, table|
  # table is a table.hashes.keys # => [:task, :Japonya Seyahati]
  table = Hash[table.raw]
  gorev = table['task']
  yapılacaklar = table['things to do']
  find_element(xpath: "//android.widget.TextView[@text='#{taskname}']").click

  find_element(xpath: "//android.widget.FrameLayout/android.view.ViewGroup/android.widget.ImageButton").click
  headline=find_element(xpath: "//android.widget.EditText[@text='#{taskname}']")
  headline.clear
  headline.send_keys gorev
  definition=find_element(xpath: "//android.widget.EditText[@text='#{explanation}']")
  definition.clear
  definition.send_keys yapılacaklar
  save = find_element(accessibility_id: "Done")
  save.click
  go_back = find_element(accessibility_id: "Yukarı git")
  go_back.click
end

When(/^menuden "([^"]*)" başlığı  ve "([^"]*)" açiklama kısmı aşağıdaki yazılıp kaydedilmeden çıkılırsa başlık kısmının ve açıklamanın değişmediği görülür$/) do |taskname, explanation, table|
  # table is a table.hashes.keys # => [:task, :Olu Deniz]
    table = Hash[table.raw]
    gorev = table['task']
    yapılacaklar = table['things to do']
    find_element(xpath: "//android.widget.TextView[@text='#{taskname}']").click

    find_element(xpath: "//android.widget.FrameLayout/android.view.ViewGroup/android.widget.ImageButton").click
    headline=find_element(xpath: "//android.widget.EditText[@text='#{taskname}']")
    headline.clear
    headline.send_keys gorev
    definition=find_element(xpath: "//android.widget.EditText[@text='#{explanation}']")
    definition.clear
    definition.send_keys yapılacaklar
    go_back = find_element(accessibility_id: "Yukarı git")
    go_back.click
    text_exact(taskname)
    text_exact(explanation)
    go_back.click

end


When(/^menuden "([^"]*)" başlığı  ve "([^"]*)" açiklama kısmı aşağıdaki yazılıp başlık kaydedilmeden çıkılırsa başlık kısmının ve açıklamanın değişmediği görülür$/) do |taskname, explanation, table|
  # table is a table.hashes.keys # => [:things to do, :Olu Deniz]
  #
  table = Hash[table.raw]
  yapılacaklar = table['things to do']
  find_element(xpath: "//android.widget.TextView[@text='#{taskname}']").click
  find_element(xpath: "//android.widget.FrameLayout/android.view.ViewGroup/android.widget.ImageButton").click
  headline=find_element(xpath: "//android.widget.EditText[@text='#{taskname}']")
  headline.clear
  definition=find_element(xpath: "//android.widget.EditText[@text='#{explanation}']")
  definition.clear
  definition.send_keys yapılacaklar
  save = find_element(accessibility_id: "Done")
  save.click
  sleep 0.1
  find_element(xpath: "//android.widget.TextView[@text='TO DOs cannot be empty']").click
  go_back = find_element(accessibility_id: "Yukarı git")
  go_back.click
  go_back.click
  text_exact(taskname)
end
When(/^menuden "([^"]*)" e girilip başlığı  ve "([^"]*)" açiklama silip hiçbirşey yazılmazsa kaydedilemez$/) do |taskname, explanation|
  find_element(xpath: "//android.widget.TextView[@text='#{taskname}']").click
  find_element(xpath: "//android.widget.FrameLayout/android.view.ViewGroup/android.widget.ImageButton").click
  headline=find_element(xpath: "//android.widget.EditText[@text='#{taskname}']")
  headline.clear
  definition=find_element(xpath: "//android.widget.EditText[@text='#{explanation}']")
  definition.clear
  save = find_element(accessibility_id: "Done")
  save.click
  sleep 0.5
  find_element(xpath: "//android.widget.TextView[@text='TO DOs cannot be empty']").click
  go_back = find_element(accessibility_id: "Yukarı git")
  go_back.click
  go_back.click

end

When(/^menuden "([^"]*)" başlığı  ve "([^"]*)" açiklama kısmı aşağıdaki gibi güncellenir$/) do |taskname, explanation, table|
  # table is a table.hashes.keys # => [:task, :Japonya Seyahati]
  table = Hash[table.raw]
  gorev = table['task']
  yapılacaklar = table['things to do']
  find_element(xpath: "//android.widget.TextView[@text='#{taskname}']").click

  find_element(xpath: "//android.widget.FrameLayout/android.view.ViewGroup/android.widget.ImageButton").click
  headline=find_element(xpath: "//android.widget.EditText[@text='#{taskname}']")
  headline.clear
  headline.send_keys gorev
  definition=find_element(xpath: "//android.widget.EditText[@text='#{explanation}']")
  definition.clear
  definition.send_keys yapılacaklar
  save = find_element(accessibility_id: "Done")
  save.click
  text_exact(gorev)
  text_exact(yapılacaklar)
  go_back = find_element(accessibility_id: "Yukarı git")
  go_back.click
end

When(/^gorev listesine  "([^"]*)" görevi eklenir$/) do |things_to_do|
  add=find_element(id: "me.henrytao.mvvmlifecycle:id/fab_add")
  add.click
  headline=find_element(xpath: "//android.widget.EditText[@text='Title']")
  headline.send_keys things_to_do
  save = find_element(accessibility_id: "Done")
  save.click

end

When(/^sayfayadaki line sayısı arttığından scroll un calışabildiği görülür$/) do
  3.times {Appium::TouchAction.new.swipe(start_x: 0.5, start_y: 0.2, offset_x: 0.0, offset_y: 0.5, duration: 700).perform}
  sleep 1
  3.times {Appium::TouchAction.new.swipe(start_x: 0.5, start_y: 0.8, offset_x: 0.0, offset_y: -0.5, duration: 700).perform}
end

When(/^scroll yardımıyla "([^"]*)" gorevi sectirilir$/) do |title|
  def find_in_list(product)
    3.times {Appium::TouchAction.new.swipe(start_x: 0.5, start_y: 0.2, offset_x: 0.0, offset_y: 0.6, duration: 600).perform}

    current_screen = get_source
    previous_screen = ""

    until (exists {text(product)}) || (current_screen == previous_screen) do
      Appium::TouchAction.new.swipe(start_x: 0.5, start_y: 0.8, offset_x: 0.0, offset_y: -0.6, duration: 600).perform
      previous_screen = current_screen
      current_screen = get_source
    end
  end

  find_in_list(title)
  find_element(xpath: "//android.widget.TextView[@text='#{title}']").click
  find_element(id: "checkbox").click
  sleep 0.5

end

When(/^test bittiğinden apk dan çıkış yapılır$/) do
  find_element(accessibility_id: "Yukarı git").click
  driver.back
end

