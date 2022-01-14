*** Settings ***
Library           AppiumLibrary

*** Test Cases ***
进入百度地图界面页
    Open Application    http://localhost:4723/wd/hub    platformName=Android    platformVersion=9.0.0    deviceName=ef1e_for_arm64    appPackage=ecarx.launcher3    appActivity=.AppPane    noReset=true
    sleep    2
    click element    xpath=(//android.widget.TextView[@content-desc="百度地图卓越版"])[1]
    sleep    1
    ${id}    get text    id=com.ecarx.adnavi:id/tv_where_to_go
    should contain    ${id}    想去哪？

里程查看
    comment    打开我的用户
    click element    xpath=//android.widget.ImageView[@content-desc="用户"]
    sleep    2
    comment    选择查看里程
    click a point    888    361    200
    sleep    3
    comment    滑动底图向上滑动
    Swipe    960    880    960    300    2000
    log    滑动成功
    sleep    3
    click element    xpath=/hierarchy/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.widget.FrameLayout/android.widget.FrameLayout/android.widget.FrameLayout/android.widget.FrameLayout[4]/android.view.ViewGroup/android.view.ViewGroup[2]/androidx.recyclerview.widget.RecyclerView/android.view.ViewGroup[5]/android.view.ViewGroup/android.widget.TextView
    sleep    2
    comment    返回用户管理界面
    click a point    61    111    200

订单查看

微信互联

组队

离线数据

添加车辆
    comment    打开我的用户
    click element    xpath=//android.widget.ImageView[@content-desc="用户"]
    sleep    2
    comment    选择添加车辆
    click a point    96    998    200
    sleep    3
    comment    点击车牌号
    click a point    165    242    200
    sleep    3
    comment    打开车牌归属地下拉框
    click element    xpath=//android.view.ViewGroup[@content-desc="属地"]/android.widget.ImageView
    sleep    4
    comment    选择：鄂
    click a point    165    710    200
    sleep    3
    input text    id=com.ecarx.adnavi:id/module_user_fragment_edit_car_plate_et    A0K78U
    sleep    3
    comment    点击保存车牌号码
    click element    xpath=/hierarchy/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.widget.FrameLayout/android.widget.FrameLayout/android.widget.FrameLayout/android.widget.FrameLayout[4]/android.view.ViewGroup/android.view.ViewGroup/android.view.ViewGroup[3]/android.widget.TextView
    sleep    3
    comment    返回用户设置界面
    click a point    61    111    200
    sleep    3
    comment    返回地图界面
    click a point    61    111    200
    sleep    2
