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

导航播报选择
    comment    打开我的用户
    click element    xpath=//android.widget.ImageView[@content-desc="用户"]
    sleep    2
    comment    打开设置
    click a point    1843    103    200
    sleep    2
    comment    选择播报
    click element    xpath=//android.view.ViewGroup[@content-desc="播报"]/android.widget.TextView
    sleep    2
    comment    导航语音选择
    click element    xpath=//android.view.ViewGroup[@content-desc="导航语音"]
    sleep    2
    comment    导航语音选择普通话使用
    click element    xpath=(//android.view.ViewGroup[@content-desc="下载"])[2]/android.widget.TextView
    sleep    2
    comment    返回播报设置界面
    click a point    61    111    200
    sleep    3
    comment    导航播报选择简洁播报
    click element    xpath=//android.view.ViewGroup[@content-desc="简洁播报"]
    sleep    2
    comment    导航播报选择详细播报
    click element    xpath=//android.view.ViewGroup[@content-desc="详细播报"]
    sleep    2
    comment    打开巡航播报
    click element    xpath=//android.view.ViewGroup[@content-desc="巡航播报"]
    sleep    2
    comment    返回用户设置界面
    click a point    61    111    200
    sleep    3
    comment    返回地图界面
    click a point    65    104    200
    sleep    2
