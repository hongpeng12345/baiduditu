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

路线偏好
    comment    打开我的用户
    click element    xpath=//android.widget.ImageView[@content-desc="用户"]
    sleep    2
    comment    打开设置
    click a point    1843    103    200
    sleep    2
    comment    路线偏好选择智能推荐
    click element    xpath=//android.view.ViewGroup[@content-desc="智能推荐"]
    sleep    2
    comment    路线偏好选择时间优先
    click element    xpath=//android.view.ViewGroup[@content-desc="时间优先"]
    sleep    2
    comment    路线偏好选择少收费
    click element    xpath=//android.view.ViewGroup[@content-desc="少收费"]
    sleep    2
    comment    路线偏好选择少拥堵
    click element    xpath=//android.view.ViewGroup[@content-desc="少拥堵"]
    sleep    2
    comment    路线偏好选择不走高速
    click element    xpath=//android.view.ViewGroup[@content-desc="不走高速"]
    sleep    2
    comment    路线偏好选择高速优先
    click element    xpath=//android.view.ViewGroup[@content-desc="高速优先"]
    sleep    2
    comment    路况概览选择小地图
    click element    xpath=//android.view.ViewGroup[@content-desc="小地图"]/android.widget.ImageView
    sleep    2
    comment    路线偏好选择路况条
    click element    xpath=//android.view.ViewGroup[@content-desc="路况条"]/android.widget.ImageView
    sleep    2
    comment    返回用户管理界面
    click a point    161    108    200
    sleep    3
    comment    返回地图界面
    click a point    65    104    200
    sleep    2

限行设置
    comment    打开我的用户
    click element    xpath=//android.widget.ImageView[@content-desc="用户"]
    sleep    2
    comment    打开设置
    click a point    1843    103    200
    sleep    2
    comment    点击限行设置的车牌设置
    click element    xpath=//android.view.ViewGroup[@content-desc="车牌设置"]
    sleep    2
    comment    点击保存车牌号码
    click element    xpath=/hierarchy/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.widget.FrameLayout/android.widget.FrameLayout/android.widget.FrameLayout/android.widget.FrameLayout[4]/android.view.ViewGroup/android.view.ViewGroup/android.view.ViewGroup[3]/android.widget.TextView
    sleep    3
    comment    点击限行设置的限行规定
    click element    xpath=//android.view.ViewGroup[@content-desc="限行规定"]
    sleep    2
    comment    点击搜索城市
    click element    xpath=//android.widget.TextView[@content-desc="搜索"]
    sleep    2
    input text    id=com.ecarx.adnavi:id/module_setting_searchity    宜昌
    sleep    3
    comment    点击搜索
    click element    xpath=//android.widget.TextView[@content-desc="搜索"]
    sleep    2
    comment    返回用户管理界面
    click a point    161    108    200
    sleep    3
    comment    点击外地车
    click element    xpath=//android.widget.TextView[@content-desc="外地车"]
    sleep    2
    comment    点击外地车
    click element    xpath=//android.widget.TextView[@content-desc="外地车"]
    sleep    2
    comment    打开避开限行
    click element    xpath=//android.view.ViewGroup[@content-desc="避开限行"]
    sleep    2
    comment    滑动底图向上滑动
    Swipe    1352    810    1352    350    2000
    log    滑动成功
    comment    返回地图界面
    click a point    65    104    200
    sleep    2
