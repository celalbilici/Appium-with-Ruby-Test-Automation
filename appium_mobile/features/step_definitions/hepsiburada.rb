When(/^deneme$/) do
  el1 = find_element(xpath: "/hierarchy/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.support.v4.widget.DrawerLayout/android.widget.LinearLayout/android.view.ViewGroup/android.widget.FrameLayout/android.view.ViewGroup/android.support.v7.widget.RecyclerView/android.widget.LinearLayout[1]/android.widget.CheckBox")
  el1.click
  el2 = find_element(xpath: "/hierarchy/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.support.v4.widget.DrawerLayout/android.widget.LinearLayout/android.view.ViewGroup/android.widget.FrameLayout/android.view.ViewGroup/android.support.v7.widget.RecyclerView/android.widget.LinearLayout[2]/android.widget.CheckBox")
  el2.click
  el3 = find_element(xpath: "/hierarchy/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.support.v4.widget.DrawerLayout/android.widget.LinearLayout/android.view.ViewGroup/android.widget.FrameLayout/android.view.ViewGroup/android.support.v7.widget.RecyclerView/android.widget.LinearLayout[3]/android.widget.CheckBox")
  el3.click
  el4 = find_element(xpath: "/hierarchy/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.support.v4.widget.DrawerLayout/android.widget.LinearLayout/android.view.ViewGroup/android.widget.FrameLayout/android.view.ViewGroup/android.support.v7.widget.RecyclerView/android.widget.LinearLayout[3]")
  el4.click
  el5 = find_element(:accessibility_id, "Delete task")
  el5.click
  el6 = find_element(xpath: "/hierarchy/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.support.v4.widget.DrawerLayout/android.widget.LinearLayout/android.view.ViewGroup/android.widget.FrameLayout/android.view.ViewGroup/android.support.v7.widget.RecyclerView/android.widget.LinearLayout[3]/android.widget.TextView")
  el6.click
  # el7 = find_element(:id, "me.henrytao.mvvmlifecycle:id/title")
  # el7.click
  # el8 = find_element(:id, "me.henrytao.mvvmlifecycle:id/title")
  # el8.click
  el9 = find_element(xpath: "/hierarchy/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.view.ViewGroup/android.widget.ImageButton")
  el9.click
  el10 = find_element(xpath: "/hierarchy/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.LinearLayout[2]/android.widget.EditText[1]")
  el10.clear
  el10.send_keys "celal "
  el11 = find_element(xpath: "/hierarchy/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.LinearLayout[2]/android.widget.EditText[2]")
  el11.clear
  el11.send_keys "bilici"
  el12 = find_element(xpath: "/hierarchy/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.LinearLayout[2]/android.widget.EditText[2]")
  el12.click
  save = find_element(accessibility_id: "Done")
  save.click
  sleep 2
  geri= find_element(accessibility_id: "Yukarı git")
  geri.click
  ekle = find_element(id: "me.henrytao.mvvmlifecycle:id/fab_add")
  ekle.click
  el10 = find_element(xpath: "/hierarchy/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.LinearLayout[2]/android.widget.EditText[1]")
  el10.clear
  el10.send_keys "ahmet "
  save = find_element(accessibility_id: "Done")
  save.click
  ekle = find_element(id: "me.henrytao.mvvmlifecycle:id/fab_add")
  ekle.click
  el10 = find_element(xpath: "/hierarchy/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.LinearLayout[2]/android.widget.EditText[1]")
  el10.clear
  el10.send_keys "mustafa "
  save = find_element(accessibility_id: "Done")
  save.click
  ekle = find_element(id: "me.henrytao.mvvmlifecycle:id/fab_add")
  ekle.click
  el10 = find_element(xpath: "/hierarchy/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.LinearLayout[2]/android.widget.EditText[1]")
  el10.clear
  el10.send_keys "kerem "

  ekle = find_element(id: "me.henrytao.mvvmlifecycle:id/fab_add")
  ekle.click
  el10 = find_element(xpath: "/hierarchy/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.LinearLayout[2]/android.widget.EditText[1]")
  el10.clear
  el10.send_keys "saadet "
  save = find_element(accessibility_id: "Done")
  save.click

  ekle = find_element(id: "me.henrytao.mvvmlifecycle:id/fab_add")
  ekle.click
  el10 = find_element(xpath: "/hierarchy/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.LinearLayout[2]/android.widget.EditText[1]")
  el10.clear
  el10.send_keys "celal "
  save = find_element(accessibility_id: "Done")
  save.click

  ekle = find_element(id: "me.henrytao.mvvmlifecycle:id/fab_add")
  ekle.click
  el10 = find_element(xpath: "/hierarchy/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.LinearLayout[2]/android.widget.EditText[1]")
  el10.clear
  el10.send_keys "sevil "
  save = find_element(accessibility_id: "Done")
  save.click

  ekle = find_element(id: "me.henrytao.mvvmlifecycle:id/fab_add")
  ekle.click
  el10 = find_element(xpath: "/hierarchy/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.LinearLayout[2]/android.widget.EditText[1]")
  el10.clear
  el10.send_keys "özden "
  save = find_element(accessibility_id: "Done")
  save.click

  ekle = find_element(id: "me.henrytao.mvvmlifecycle:id/fab_add")
  ekle.click
  el10 = find_element(xpath: "/hierarchy/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.LinearLayout[2]/android.widget.EditText[1]")
  el10.clear
  el10.send_keys "necati "
  save = find_element(accessibility_id: "Done")
  save.click

  ekle = find_element(id: "me.henrytao.mvvmlifecycle:id/fab_add")
  ekle.click
  el10 = find_element(xpath: "/hierarchy/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.LinearLayout[2]/android.widget.EditText[1]")
  el10.clear
  el10.send_keys "ayten "
  save = find_element(accessibility_id: "Done")
  save.click

  ekle = find_element(id: "me.henrytao.mvvmlifecycle:id/fab_add")
  ekle.click
  el10 = find_element(xpath: "/hierarchy/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.LinearLayout[2]/android.widget.EditText[1]")
  el10.clear
  el10.send_keys "ahmet "
  save = find_element(accessibility_id: "Done")
  save.click



end

When(/^google açılır$/) do
  url = "https://www.google.com/"
  visit url
end