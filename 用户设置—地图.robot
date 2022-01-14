*** Settings ***
Library           AppiumLibrary

*** Test Cases ***
进入百度地图界面
    Open Application    http://localhost:4723/wd/hub    platformName=Android    platformVersion=9.0.0    deviceName=ef1e_for_arm64    appPackage=ecarx.launcher3    appActivity=.AppPane    noReset=true
    sleep    2
    click element    xpath=(//android.widget.TextView[@content-desc="百度地图卓越版"])[1]
    sleep    5
    ${id}    get text    id=com.ecarx.adnavi:id/tv_where_to_go
    should contain    ${id}    想去哪？

设置1
    comment    打开我的用户
    click element    xpath=//android.widget.ImageView[@content-desc="用户"]
    sleep    2
    comment    打开设置
    click a point    1843    103    200
    sleep    2
    comment    选择地图
    click element    xpath=//android.view.ViewGroup[@content-desc="地图"]
    sleep    2
    comment    地图文字大小选择选择大字号
    click element    xpath=/hierarchy/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.widget.FrameLayout/android.widget.FrameLayout/android.widget.FrameLayout/android.widget.FrameLayout[4]/android.view.ViewGroup/android.view.ViewGroup/android.widget.FrameLayout/android.widget.ScrollView/android.view.ViewGroup/android.view.ViewGroup[1]/android.view.ViewGroup[2]
    sleep    2
    comment    收藏点标注
    click element    xpath=//android.view.ViewGroup[@content-desc="收藏点标注"]
    sleep    2
    comment    返回用户设置界面
    click a point    61    111    200
    sleep    3
    comment    返回地图界面
    click a point    65    104    200
    sleep    2

设置2
    comment    打开我的用户
    click element    xpath=//android.widget.ImageView[@content-desc="用户"]
    sleep    2
    comment    打开设置
    click a point    1843    103    200
    sleep    2
    comment    选择地图
    click element    xpath=//android.view.ViewGroup[@content-desc="地图"]
    sleep    2
    comment    个性化车标选择经典
    click element    xpath=//android.view.ViewGroup[@content-desc="经典"]
    sleep    2
    comment    个性化车标选择飞机
    click element    xpath=//android.view.ViewGroup[@content-desc="飞机"]
    sleep    2
    comment    个性化车标选择车速
    click element    xpath=//android.view.ViewGroup[@content-desc="车速"]
    sleep    2
    comment    个性化车标选择车模
    click element    xpath=//android.view.ViewGroup[@content-desc="车模"]
    sleep    2
    comment    日夜模式选择自动
    click element    xpath=//android.view.ViewGroup[@content-desc="自动"]
    sleep    2
    comment    日夜模式选择自动
    click element    xpath=//android.view.ViewGroup[@content-desc="自动"]
    sleep    2
    comment    日夜模式选择白天
    click element    xpath=//android.view.ViewGroup[@content-desc="白天"]
    sleep    2
    comment    日夜模式选择黑夜
    click element    xpath=//android.view.ViewGroup[@content-desc="黑夜"]
    sleep    2
    comment    自动比例尺打开
    click element    xpath=//android.view.ViewGroup[@content-desc="自动比例尺"]
    sleep    2
    comment    低能耗模式
    click element    xpath=//android.view.ViewGroup[@content-desc="低能耗模式"]
    sleep    2
    comment    返回用户界面
    click a point    61    111    200
    sleep    3
    comment    返回地图界面
    click a point    65    104    200
    sleep    2
