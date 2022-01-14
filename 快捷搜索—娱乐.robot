*** Settings ***
Library           AppiumLibrary

*** Test Cases ***
进入百度地图界面
    Open Application    http://localhost:4723/wd/hub    platformName=Android    platformVersion=9.0.0    deviceName=ef1e_for_arm64    appPackage=ecarx.launcher3    appActivity=.AppPane    noReset=true
    sleep    2
    click element    xpath=(//android.widget.TextView[@content-desc="百度地图卓越版"])[1]
    sleep    1
    ${id}    get text    id=com.ecarx.adnavi:id/tv_where_to_go
    should contain    ${id}    想去哪？

网吧
    comment    点击搜索想去哪？
    click element    xpath=/hierarchy/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.widget.FrameLayout/android.widget.FrameLayout/android.widget.FrameLayout/android.widget.FrameLayout[4]/android.view.ViewGroup/android.view.ViewGroup/android.view.ViewGroup/android.view.ViewGroup
    sleep    2
    comment    选择出行—网吧
    click element    xpath=/hierarchy/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.widget.FrameLayout/android.widget.FrameLayout/android.widget.FrameLayout/android.widget.FrameLayout[4]/android.widget.FrameLayout[1]/android.widget.LinearLayout/android.view.ViewGroup[2]/android.widget.RelativeLayout/android.widget.LinearLayout/android.view.ViewGroup/android.widget.ScrollView/android.widget.RelativeLayout/androidx.recyclerview.widget.RecyclerView/android.widget.LinearLayout[12]/android.widget.TextView
    sleep    2
    comment    选择第一个网吧地址进入详细页
    click element    xpath=/hierarchy/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.widget.FrameLayout/android.widget.FrameLayout/android.widget.FrameLayout/android.widget.FrameLayout[4]/android.view.ViewGroup/android.view.ViewGroup/android.view.ViewGroup/androidx.recyclerview.widget.RecyclerView/android.view.ViewGroup[1]/android.widget.ImageView[2]
    sleep    2
    comment    点击图片放大
    click a point    365    108    200
    sleep    2
    comment    点击缩小
    click a point    365    108    200
    sleep    2
    comment    收藏此地址
    click element    xpath=//android.widget.ImageView[@content-desc="点击收藏"]
    sleep    2
    comment    点击：去这里
    click element    xpath=//android.widget.Button[@content-desc="导航"]
    sleep    2

洗浴
    comment    点击搜索想去哪？
    click element    xpath=/hierarchy/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.widget.FrameLayout/android.widget.FrameLayout/android.widget.FrameLayout/android.widget.FrameLayout[4]/android.view.ViewGroup/android.view.ViewGroup/android.view.ViewGroup/android.view.ViewGroup
    sleep    2
    comment    选择出行—洗浴
    click element    xpath=/hierarchy/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.widget.FrameLayout/android.widget.FrameLayout/android.widget.FrameLayout/android.widget.FrameLayout[4]/android.widget.FrameLayout[1]/android.widget.LinearLayout/android.view.ViewGroup[2]/android.widget.RelativeLayout/android.widget.LinearLayout/android.view.ViewGroup/android.widget.ScrollView/android.widget.RelativeLayout/androidx.recyclerview.widget.RecyclerView/android.widget.LinearLayout[13]/android.widget.TextView
    sleep    2
    comment    选择第一个洗浴地址进入详细页
    click element    xpath=/hierarchy/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.widget.FrameLayout/android.widget.FrameLayout/android.widget.FrameLayout/android.widget.FrameLayout[4]/android.view.ViewGroup/android.view.ViewGroup/android.view.ViewGroup/androidx.recyclerview.widget.RecyclerView/android.view.ViewGroup[1]/android.widget.ImageView[2]
    sleep    2
    comment    点击图片放大
    click a point    365    108    200
    sleep    2
    comment    点击缩小
    click a point    365    108    200
    sleep    2
    comment    收藏此地址
    click element    xpath=//android.widget.ImageView[@content-desc="点击收藏"]
    sleep    2
    comment    点击地址下拉框
    click a point    710    396    200
    sleep    2
    comment    点击：去这里
    click element    xpath=//android.widget.Button[@content-desc="导航"]
    sleep    2

足疗
    comment    点击搜索想去哪？
    click element    xpath=/hierarchy/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.widget.FrameLayout/android.widget.FrameLayout/android.widget.FrameLayout/android.widget.FrameLayout[4]/android.view.ViewGroup/android.view.ViewGroup/android.view.ViewGroup/android.view.ViewGroup
    sleep    2
    comment    选择出行—足疗
    click element    xpath=/hierarchy/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.widget.FrameLayout/android.widget.FrameLayout/android.widget.FrameLayout/android.widget.FrameLayout[4]/android.widget.FrameLayout[1]/android.widget.LinearLayout/android.view.ViewGroup[2]/android.widget.RelativeLayout/android.widget.LinearLayout/android.view.ViewGroup/android.widget.ScrollView/android.widget.RelativeLayout/androidx.recyclerview.widget.RecyclerView/android.widget.LinearLayout[14]/android.widget.TextView
    sleep    2
    comment    选择第一个足疗地址进入详细页
    click element    xpath=/hierarchy/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.widget.FrameLayout/android.widget.FrameLayout/android.widget.FrameLayout/android.widget.FrameLayout[4]/android.view.ViewGroup/android.view.ViewGroup/android.view.ViewGroup/androidx.recyclerview.widget.RecyclerView/android.view.ViewGroup[1]/android.widget.ImageView[2]
    sleep    2
    comment    点击图片放大
    click a point    365    108    200
    sleep    2
    comment    点击缩小
    click a point    365    108    200
    sleep    2
    comment    收藏此地址
    click element    xpath=//android.widget.ImageView[@content-desc="点击收藏"]
    sleep    2
    comment    点击地址下拉框
    click a point    710    396    200
    sleep    2
    comment    点击：去这里
    click element    xpath=//android.widget.Button[@content-desc="导航"]
    sleep    2

KTV
    comment    点击搜索想去哪？
    click element    xpath=/hierarchy/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.widget.FrameLayout/android.widget.FrameLayout/android.widget.FrameLayout/android.widget.FrameLayout[4]/android.view.ViewGroup/android.view.ViewGroup/android.view.ViewGroup/android.view.ViewGroup
    sleep    2
    comment    选择出行—KTV
    click element    xpath=/hierarchy/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.widget.FrameLayout/android.widget.FrameLayout/android.widget.FrameLayout/android.widget.FrameLayout[4]/android.widget.FrameLayout[1]/android.widget.LinearLayout/android.view.ViewGroup[2]/android.widget.RelativeLayout/android.widget.LinearLayout/android.view.ViewGroup/android.widget.ScrollView/android.widget.RelativeLayout/androidx.recyclerview.widget.RecyclerView/android.widget.LinearLayout[15]/android.widget.TextView
    sleep    2
    comment    选择第一个KTV地址进入详细页
    click element    xpath=/hierarchy/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.widget.FrameLayout/android.widget.FrameLayout/android.widget.FrameLayout/android.widget.FrameLayout[4]/android.view.ViewGroup/android.view.ViewGroup/android.view.ViewGroup/androidx.recyclerview.widget.RecyclerView/android.view.ViewGroup[1]/android.widget.ImageView[2]
    sleep    2
    comment    点击图片放大
    click a point    365    108    200
    sleep    2
    comment    点击缩小
    click a point    365    108    200
    sleep    2
    comment    收藏此地址
    click element    xpath=//android.widget.ImageView[@content-desc="点击收藏"]
    sleep    2
    comment    点击地址下拉框
    click a point    710    396    200
    sleep    2
    comment    点击：去这里
    click element    xpath=//android.widget.Button[@content-desc="导航"]
    sleep    2

电影院
    comment    点击搜索想去哪？
    click element    xpath=/hierarchy/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.widget.FrameLayout/android.widget.FrameLayout/android.widget.FrameLayout/android.widget.FrameLayout[4]/android.view.ViewGroup/android.view.ViewGroup/android.view.ViewGroup/android.view.ViewGroup
    sleep    2
    comment    选择出行—电影院
    click element    xpath=/hierarchy/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.widget.FrameLayout/android.widget.FrameLayout/android.widget.FrameLayout/android.widget.FrameLayout[4]/android.widget.FrameLayout[1]/android.widget.LinearLayout/android.view.ViewGroup[2]/android.widget.RelativeLayout/android.widget.LinearLayout/android.view.ViewGroup/android.widget.ScrollView/android.widget.RelativeLayout/androidx.recyclerview.widget.RecyclerView/android.widget.LinearLayout[16]/android.widget.TextView
    sleep    2
    comment    选择第一个电影院地址进入详细页
    click element    xpath=/hierarchy/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.widget.FrameLayout/android.widget.FrameLayout/android.widget.FrameLayout/android.widget.FrameLayout[4]/android.view.ViewGroup/android.view.ViewGroup/android.view.ViewGroup/androidx.recyclerview.widget.RecyclerView/android.view.ViewGroup[1]/android.widget.ImageView[2]
    sleep    2
    comment    点击图片放大
    click a point    365    108    200
    sleep    2
    comment    点击缩小
    click a point    365    108    200
    sleep    2
    comment    收藏此地址
    click element    xpath=//android.widget.ImageView[@content-desc="点击收藏"]
    sleep    2
    comment    点击地址下拉框
    click a point    710    396    200
    sleep    2
    comment    点击：去这里
    click element    xpath=//android.widget.Button[@content-desc="导航"]
    sleep    2

按摩
    comment    点击搜索想去哪？
    click element    xpath=/hierarchy/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.widget.FrameLayout/android.widget.FrameLayout/android.widget.FrameLayout/android.widget.FrameLayout[4]/android.view.ViewGroup/android.view.ViewGroup/android.view.ViewGroup/android.view.ViewGroup
    sleep    2
    comment    选择出行—按摩
    click element    xpath=/hierarchy/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.widget.FrameLayout/android.widget.FrameLayout/android.widget.FrameLayout/android.widget.FrameLayout[4]/android.widget.FrameLayout[1]/android.widget.LinearLayout/android.view.ViewGroup[2]/android.widget.RelativeLayout/android.widget.LinearLayout/android.view.ViewGroup/android.widget.ScrollView/android.widget.RelativeLayout/androidx.recyclerview.widget.RecyclerView/android.widget.LinearLayout[17]/android.widget.TextView
    sleep    2
    comment    选择第一个按摩地址进入详细页
    click element    xpath=/hierarchy/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.widget.FrameLayout/android.widget.FrameLayout/android.widget.FrameLayout/android.widget.FrameLayout[4]/android.view.ViewGroup/android.view.ViewGroup/android.view.ViewGroup/androidx.recyclerview.widget.RecyclerView/android.view.ViewGroup[1]/android.widget.ImageView[2]
    sleep    2
    comment    点击图片放大
    click a point    365    108    200
    sleep    2
    comment    点击缩小
    click a point    365    108    200
    sleep    2
    comment    收藏此地址
    click element    xpath=//android.widget.ImageView[@content-desc="点击收藏"]
    sleep    2
    comment    点击地址下拉框
    click a point    710    396    200
    sleep    2
    comment    点击：去这里
    click element    xpath=//android.widget.Button[@content-desc="导航"]
    sleep    2

博物馆
    comment    点击搜索想去哪？
    click element    xpath=/hierarchy/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.widget.FrameLayout/android.widget.FrameLayout/android.widget.FrameLayout/android.widget.FrameLayout[4]/android.view.ViewGroup/android.view.ViewGroup/android.view.ViewGroup/android.view.ViewGroup
    sleep    2
    comment    选择出行—博物馆
    click element    xpath=/hierarchy/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.widget.FrameLayout/android.widget.FrameLayout/android.widget.FrameLayout/android.widget.FrameLayout[4]/android.widget.FrameLayout[1]/android.widget.LinearLayout/android.view.ViewGroup[2]/android.widget.RelativeLayout/android.widget.LinearLayout/android.view.ViewGroup/android.widget.ScrollView/android.widget.RelativeLayout/androidx.recyclerview.widget.RecyclerView/android.widget.LinearLayout[18]/android.widget.TextView
    sleep    2
    comment    选择第一个博物馆地址进入详细页
    click element    xpath=/hierarchy/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.widget.FrameLayout/android.widget.FrameLayout/android.widget.FrameLayout/android.widget.FrameLayout[4]/android.view.ViewGroup/android.view.ViewGroup/android.view.ViewGroup/androidx.recyclerview.widget.RecyclerView/android.view.ViewGroup[1]/android.widget.ImageView[2]
    sleep    2
    comment    点击图片放大
    click a point    365    108    200
    sleep    2
    comment    点击缩小
    click a point    365    108    200
    sleep    2
    comment    收藏此地址
    click element    xpath=//android.widget.ImageView[@content-desc="点击收藏"]
    sleep    2
    comment    点击地址下拉框
    click a point    710    396    200
    sleep    2
    comment    点击：去这里
    click element    xpath=//android.widget.Button[@content-desc="导航"]
    sleep    2
