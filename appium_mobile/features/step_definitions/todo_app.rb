
When(/^belirtilen komutlarla android uygulamasina giris yapilir$/) do
  desired_caps = {
      caps: {
          platformName: 'Android',
          platformVersion: '7.0',
          deviceName: 'R28J613N0QZ',
          appPackage: 'me.henrytao.mvvmlifecycle',
          app: 'C:\Users\LENOVO\Desktop\MVVM Life Cycle_me.henrytao.mvvmlifecycle.apk',
          appActivity: 'me.henrytao.mvvmlifecycledemo.ui.MainActivity'
      }
  }
  @driver = Appium::Driver.new(desired_caps, true)
  @driver.start_driver
  Appium.promote_appium_methods Object
end

When(/^uygulamada (\d+) adet checkbox olduğu görülürse$/) do |checkbox_count|
  # count =find_element(xpath: "/hierarchy/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.support.v4.widget.DrawerLayout/android.widget.LinearLayout/android.view.ViewGroup/android.widget.FrameLayout/android.view.ViewGroup/android.support.v7.widget.RecyclerView)")
  elements=find_elements(xpath: "/android.widget.LinearLayout").count
  expect(elements).to eq checkbox_count
end

When(/^tasklar sirasiyla check edilir$/) do
  task1 = find_element(xpath: "/hierarchy/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.support.v4.widget.DrawerLayout/android.widget.LinearLayout/android.view.ViewGroup/android.widget.FrameLayout/android.view.ViewGroup/android.support.v7.widget.RecyclerView/android.widget.LinearLayout[1]/android.widget.CheckBox")
  task1.click
  task1.click
  element=driver.find_element(xpath: "/hierarchy/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.support.v4.widget.DrawerLayout/android.widget.LinearLayout/android.view.ViewGroup/android.widget.FrameLayout/android.view.ViewGroup/android.support.v7.widget.RecyclerView/android.widget.LinearLayout[1]/android.widget.CheckBox");

  if(element.attribute("checked")=="false")

        element.click()
    end
  task2 = find_element(xpath: "/hierarchy/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.support.v4.widget.DrawerLayout/android.widget.LinearLayout/android.view.ViewGroup/android.widget.FrameLayout/android.view.ViewGroup/android.support.v7.widget.RecyclerView/android.widget.LinearLayout[2]/android.widget.CheckBox")
  task2.click
  task3 = find_element(xpath: "/hierarchy/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.support.v4.widget.DrawerLayout/android.widget.LinearLayout/android.view.ViewGroup/android.widget.FrameLayout/android.view.ViewGroup/android.support.v7.widget.RecyclerView/android.widget.LinearLayout[3]/android.widget.CheckBox")
  task3.click
  task4 = find_element(xpath: "/hierarchy/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.support.v4.widget.DrawerLayout/android.widget.LinearLayout/android.view.ViewGroup/android.widget.FrameLayout/android.view.ViewGroup/android.support.v7.widget.RecyclerView/android.widget.LinearLayout[4]/android.widget.CheckBox")
  task4.click
  task5 = find_element(xpath: "/hierarchy/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.support.v4.widget.DrawerLayout/android.widget.LinearLayout/android.view.ViewGroup/android.widget.FrameLayout/android.view.ViewGroup/android.support.v7.widget.RecyclerView/android.widget.LinearLayout[5]/android.widget.CheckBox")
  task5.click

end

When(/^check edilen tasklardan "([^"]*)"\.sinin unchecked yapılabildiği görülür$/) do |arg|
  unchecked = find_element(xpath: "/hierarchy/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.support.v4.widget.DrawerLayout/android.widget.LinearLayout/android.view.ViewGroup/android.widget.FrameLayout/android.view.ViewGroup/android.support.v7.widget.RecyclerView/android.widget.LinearLayout['#{arg}']/android.widget.CheckBox")
  unchecked.click
  checked = find_element(xpath: "/hierarchy/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.support.v4.widget.DrawerLayout/android.widget.LinearLayout/android.view.ViewGroup/android.widget.FrameLayout/android.view.ViewGroup/android.support.v7.widget.RecyclerView/android.widget.LinearLayout['#{arg}']/android.widget.CheckBox")
  checked.click
end

When(/^menuden "([^"]*)" silinir$/) do |checkbox|
  if checkbox.to_s == "task 1"
    satır = 1
  elsif checkbox.to_s == "task 2"
    satır = 2
  elsif checkbox.to_s == "task 3"
    satır = 3
  elsif checkbox.to_s == "task 4"
    satır = 4
  else
    checkbox.to_s == "task 5"
    satır = 5
  end
  find_element(xpath: "/hierarchy/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.support.v4.widget.DrawerLayout/android.widget.LinearLayout/android.view.ViewGroup/android.widget.FrameLayout/android.view.ViewGroup/android.support.v7.widget.RecyclerView/android.widget.LinearLayout[#{satır.to_i}]/android.widget.TextView").click
  delete = find_element(:accessibility_id, "Delete task")
  delete.click
end

When(/^menuden "([^"]*)" adi ve açiklamasi aşağıdaki gibi güncellenir$/) do |checkbox, table|
  # table is a table.hashes.keys # => [:title, :Beyaz Eşya]
  table = Hash[table.raw]
  başlık = table['title']
  desc = table['description']

  if checkbox == "task 1"
    satır = 1
  elsif checkbox == "task 2"
    satır = 2
  elsif checkbox == "task 3"
    satır = 3
  elsif checkbox == "task 4"
    satır = 4
  else
    checkbox == "task 5"
    satır = 5
  end

  find_element(xpath: "//android.support.v7.widget.RecyclerView/android.widget.LinearLayout['#{satır.to_i}']/android.widget.TextView[@text='#{checkbox}']").click
  update = find_element(xpath: "/hierarchy/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.view.ViewGroup/android.widget.ImageButton")
  update.click
  title = find_element(xpath: "/hierarchy/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.LinearLayout[2]/android.widget.EditText[1]")
  title.clear
  title.send_keys başlık
  description = find_element(xpath: "/hierarchy/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.LinearLayout[2]/android.widget.EditText[2]")
  description.clear
  description.send_keys desc
  save = find_element(accessibility_id: "Done")
  save.click
  back = find_element(accessibility_id: "Yukarı git")
  back.click
end

When(/^listeden "([^"]*)" seçilip title ve description aşağıdaki gibi girilip kaydedilmeden çıkılırsa eklenmek istenen kaydın listede olmadığı görülür$/) do |checkbox, table|
  # table is a table.hashes.keys # => [:title, :Cep Telefonu]
  table = Hash[table.raw]
  başlık = table['title']
  desc = table['description']

  if checkbox.to_s == "task 1"
    satır = 1
  elsif checkbox.to_s == "task 2"
    satır = 2
  elsif checkbox.to_s == "task 3"
    satır = 3
  elsif checkbox.to_s == "task 4"
    satır = 4
  else
    checkbox.to_s == "task 5"
    satır = 5
  end

  # find_element(xpath: "/hierarchy/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.support.v4.widget.DrawerLayout/android.widget.LinearLayout/android.view.ViewGroup/android.widget.FrameLayout/android.view.ViewGroup/android.support.v7.widget.RecyclerView/android.widget.LinearLayout['#{satır}']").click
  find_element(xpath: "/hierarchy/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.support.v4.widget.DrawerLayout/android.widget.LinearLayout/android.view.ViewGroup/android.widget.FrameLayout/android.view.ViewGroup/android.support.v7.widget.RecyclerView/android.widget.LinearLayout[#{satır.to_i}]/android.widget.TextView").click
  update = find_element(xpath: "/hierarchy/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.view.ViewGroup/android.widget.ImageButton")
  update.click
  title = find_element(xpath: "/hierarchy/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.LinearLayout[2]/android.widget.EditText[1]")
  title.clear
  title.send_keys başlık
  description = find_element(xpath: "/hierarchy/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.LinearLayout[2]/android.widget.EditText[2]")
  description.clear
  description.send_keys desc
  back = find_element(accessibility_id: "Yukarı git")
  back.click
  sleep 1
  back = find_element(accessibility_id: "Yukarı git")
  back.click
end


When(/^task 5 seçilip title yazılmadan sadece description yazılırsa kaydedilemediği görülür$/) do |table|
  # table is a table.hashes.keys # => [:description, :Iphone x]
  table = Hash[table.raw]
  desc = table['description']
  find_element(xpath: "/hierarchy/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.support.v4.widget.DrawerLayout/android.widget.LinearLayout/android.view.ViewGroup/android.widget.FrameLayout/android.view.ViewGroup/android.support.v7.widget.RecyclerView/android.widget.LinearLayout[4]/android.widget.TextView").click
  update = find_element(xpath: "/hierarchy/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.view.ViewGroup/android.widget.ImageButton")
  update.click
  title = find_element(xpath: "/hierarchy/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.LinearLayout[2]/android.widget.EditText[1]")
  title.clear
  description = find_element(xpath: "/hierarchy/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.LinearLayout[2]/android.widget.EditText[2]")
  description.clear
  description.send_keys desc
  save = find_element(accessibility_id: "Done")
  save.click
  sleep 0.5
  find_element(xpath: "//android.widget.TextView[@text='TO DOs cannot be empty']").click
  back= find_element(accessibility_id: "Yukarı git")
  back.click
  back= find_element(accessibility_id: "Yukarı git")
  back.click
end


When(/^task 5 de title ve description set edilmeden kaydedilemediği görülür$/) do
  find_element(xpath: "/hierarchy/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.support.v4.widget.DrawerLayout/android.widget.LinearLayout/android.view.ViewGroup/android.widget.FrameLayout/android.view.ViewGroup/android.support.v7.widget.RecyclerView/android.widget.LinearLayout[4]/android.widget.TextView").click
  update = find_element(xpath: "/hierarchy/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.view.ViewGroup/android.widget.ImageButton")
  update.click
  title = find_element(xpath: "/hierarchy/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.LinearLayout[2]/android.widget.EditText[1]")
  title.clear
  description = find_element(xpath: "/hierarchy/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.LinearLayout[2]/android.widget.EditText[2]")
  description.clear
  save = find_element(accessibility_id: "Done")
  save.click
  sleep 0.5
  find_element(xpath: "//android.widget.TextView[@text='TO DOs cannot be empty']").click
  back= find_element(accessibility_id: "Yukarı git")
  back.click
  back= find_element(accessibility_id: "Yukarı git")
  back.click
end

When(/^task listesine "([^"]*)" eklenir$/) do |product|
  basket=find_element(id: "me.henrytao.mvvmlifecycle:id/fab_add")
  basket.click
  title = find_element(xpath: "/hierarchy/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.LinearLayout[2]/android.widget.EditText[1]")
  title.send_keys product
  description = find_element(xpath: "/hierarchy/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.LinearLayout[2]/android.widget.EditText[2]")
  description.send_keys "açiklama"
  save = find_element(accessibility_id: "Done")
  save.click

end

When(/^scroll ile aşağı yukarı gidilebildiği görülür$/) do
  2.times {Appium::TouchAction.new.swipe(start_x: 0.5, start_y: 0.2, offset_x: 0.0, offset_y: 0.6, duration: 600).perform}
  sleep 1
  2.times {Appium::TouchAction.new.swipe(start_x: 0.5, start_y: 0.8, offset_x: 0.0, offset_y: -0.6, duration: 600).perform}

end

When(/^scroll methodu ile kaydedilen "([^"]*)" task ı seçtirilir$/) do |taskname|
  def find_in_list(product)
    2.times {Appium::TouchAction.new.swipe(start_x: 0.5, start_y: 0.2, offset_x: 0.0, offset_y: 0.6, duration: 600).perform}

    current_screen = get_source
    previous_screen = ""

    until (exists {text(product)}) || (current_screen == previous_screen) do
      Appium::TouchAction.new.swipe(start_x: 0.5, start_y: 0.8, offset_x: 0.0, offset_y: -0.6, duration: 600).perform
      previous_screen = current_screen
      current_screen = get_source
    end
  end

  find_in_list(taskname)
  find_element(xpath: "//android.widget.TextView[@text='#{taskname}']").click
  sleep 0.5

end

When(/^Uygulamadan cikis yapilir$/) do
  find_element(accessibility_id: "Yukarı git").click
  driver.back
end


When(/^deneme dffdfdfd$/) do
 ###### multi_touch rb içindeki functionlar
  zoom(percentage = 200, auto_perform = true, driver = $driver)
  pinch(percentage = 25, auto_perform = true, driver = $driver)
  text_exact("task 5")
  # fill_in(title, options={})

end