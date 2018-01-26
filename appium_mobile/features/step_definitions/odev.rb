When(/^uygulama açılır ve taskların tikli olmadığı görülür$/) do
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
  find_element(xpath: "//android.widget.TextView[@text='task 1']").click
  sleep 3

  el1 = find_element(xpath: "/hierarchy/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.support.v4.widget.DrawerLayout/android.widget.LinearLayout/android.view.ViewGroup/android.widget.FrameLayout/android.view.ViewGroup/android.support.v7.widget.RecyclerView/android.widget.LinearLayout[1]/android.widget.CheckBox")
  el1.click
  el2 = find_element(xpath: "/hierarchy/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.support.v4.widget.DrawerLayout/android.widget.LinearLayout/android.view.ViewGroup/android.widget.FrameLayout/android.view.ViewGroup/android.support.v7.widget.RecyclerView/android.widget.LinearLayout[2]/android.widget.CheckBox")
  el2.click
  el3 = find_element(xpath: "/hierarchy/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.support.v4.widget.DrawerLayout/android.widget.LinearLayout/android.view.ViewGroup/android.widget.FrameLayout/android.view.ViewGroup/android.support.v7.widget.RecyclerView/android.widget.LinearLayout[3]/android.widget.CheckBox")
  el3.click
  el4 = find_element(id: "android:id/list")
  el4.click
  el5 = find_element(xpath: "/hierarchy/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.support.v4.widget.DrawerLayout/android.widget.LinearLayout/android.view.ViewGroup/android.widget.FrameLayout/android.view.ViewGroup/android.support.v7.widget.RecyclerView/android.widget.LinearLayout[1]/android.widget.TextView")
  el5.click
  el6 = find_element(xpath: "/hierarchy/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.view.ViewGroup/android.widget.ImageButton")
  el6.click
  el7 = find_element(xpath: "/hierarchy/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.LinearLayout[2]/android.widget.EditText[1]")
  el7.clear
  el7.send_keys "celal"
  el8 =find_element(accessibility_id: "Done")
  el8.click

  el10 = find_element(accessibility_id: "Yukarı git")
  el10.click
  el11 = find_element(id: "me.henrytao.mvvmlifecycle:id/fab_add")
  el11.click
  el7.send_keys "celal"
  el8 =find_element(accessibility_id: "Done")
  el8.click
  el11 = find_element(id: "me.henrytao.mvvmlifecycle:id/fab_add")
  el11.click
  el7.send_keys "celal"
  el8 =find_element(accessibility_id: "Done")
  el8.click
  el11 = find_element(id: "me.henrytao.mvvmlifecycle:id/fab_add")
  el11.click
  el7.send_keys "celal"
  el11 = find_element(id: "me.henrytao.mvvmlifecycle:id/fab_add")
  el11.click
  el7.send_keys "celal"
  el8 =find_element(accessibility_id: "Done")
  el8.click
  el11 = find_element(id: "me.henrytao.mvvmlifecycle:id/fab_add")
  el11.click
  el7.send_keys "celal"
  el8 =find_element(accessibility_id: "Done")
  el8.click
  el11 = find_element(id: "me.henrytao.mvvmlifecycle:id/fab_add")
  el11.click
  el7.send_keys "celal"





end

When(/^"([^"]*)" e  tıklanıp "([^"]*)"\. satır seçilip "([^"]*)" olarak güncellenir ve açıklama yazılır$/) do |arg1, arg2, arg3|
  find_element(xpath: "//android.support.v7.widget.RecyclerView/android.widget.LinearLayout['#{arg2}']/android.widget.TextView[@text='#{arg1}']").click
  update = find_element(xpath: "/hierarchy/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.view.ViewGroup/android.widget.ImageButton")
  update.click
  name = find_element(xpath: "/hierarchy/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.LinearLayout[2]/android.widget.EditText[1]")
  name.clear
  name.send_keys
  description = find_element(xpath: "/hierarchy/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.LinearLayout[2]/android.widget.EditText[2]")
  description.clear
  description.send_keys

  save = find_element(accessibility_id: "Done")
  save.click
  geri= find_element(accessibility_id: "Yukarı git")
  geri.click

end

When(/^uygulama açılır$/) do
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
