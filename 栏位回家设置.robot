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

地图选点
    comment    打开回家方式设置
    click element    xpath=//android.widget.ImageView[@content-desc="回家"]
    sleep    2
    comment    选择地图选点
    click element    xpath=/hierarchy/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.widget.FrameLayout/android.widget.FrameLayout/android.widget.FrameLayout/android.widget.FrameLayout[4]/android.view.ViewGroup/android.view.ViewGroup/android.view.ViewGroup[2]/android.view.ViewGroup[2]
    sleep    2
    comment    设置为家
    click element    xpath=/hierarchy/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.widget.FrameLayout/android.widget.FrameLayout/android.widget.FrameLayout/android.widget.FrameLayout[4]/android.widget.FrameLayout/android.widget.LinearLayout/android.view.View
    sleep    2

当前位置
    comment    打开回家方式设置
    click element    xpath=//android.widget.ImageView[@content-desc="回家"]
    sleep    2
    comment    选择当前位置
    click element    xpath=/hierarchy/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.widget.FrameLayout/android.widget.FrameLayout/android.widget.FrameLayout/android.widget.FrameLayout[4]/android.view.ViewGroup/android.view.ViewGroup/android.view.ViewGroup[2]/android.view.ViewGroup[1]
    sleep    2

搜索家地址
    comment    打开去公司方式设置
    click element    xpath=//android.widget.ImageView[@content-desc="回家"]
    sleep    2
    comment    搜索公司地址
    click element    xpath=/hierarchy/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.widget.FrameLayout/android.widget.FrameLayout/android.widget.FrameLayout/android.widget.FrameLayout[4]/android.view.ViewGroup/android.view.ViewGroup/android.view.ViewGroup[1]/android.view.ViewGroup
    sleep    2

历史搜索记录添加
    comment    打开回家方式设置
    click element    xpath=//android.widget.ImageView[@content-desc="回家"]
    sleep    2
    comment    选择历史搜索记录第一条
    click element    xpath=(//android.widget.ImageView[@content-desc="添加"])[1]
    sleep    2
