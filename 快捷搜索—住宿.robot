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

快捷酒店
    comment    点击搜索想去哪？
    click element    xpath=/hierarchy/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.widget.FrameLayout/android.widget.FrameLayout/android.widget.FrameLayout/android.widget.FrameLayout[4]/android.view.ViewGroup/android.view.ViewGroup/android.view.ViewGroup/android.view.ViewGroup
    sleep    2
    comment    滑动底图向上滑动
    Swipe    1774    1025    1774
    log    滑动成功
    comment    选择出行—快捷酒店
    click element    xpath=/hierarchy/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.widget.FrameLayout/android.widget.FrameLayout/android.widget.FrameLayout/android.widget.FrameLayout[4]/android.widget.FrameLayout[1]/android.widget.LinearLayout/android.view.ViewGroup[2]/android.widget.RelativeLayout/android.widget.LinearLayout/android.view.ViewGroup/android.widget.ScrollView/android.widget.RelativeLayout/androidx.recyclerview.widget.RecyclerView/android.widget.LinearLayout[7]/android.widget.TextView
    Wait Until Element Is Visible    id=com.ecarx.adnavi:id/module_search_search_result_tv_search_content
    ${text}    get text    id=com.ecarx.adnavi:id/module_search_search_result_tv_search_content
    should not be empty    ${text}
    Comment    log    ${text}
    sleep    2
    comment    选择第一个快捷酒店地址进入详细页
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

星级酒店
    comment    点击搜索想去哪？
    click element    xpath=/hierarchy/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.widget.FrameLayout/android.widget.FrameLayout/android.widget.FrameLayout/android.widget.FrameLayout[4]/android.view.ViewGroup/android.view.ViewGroup/android.view.ViewGroup/android.view.ViewGroup
    sleep    2
    comment    滑动底图向上滑动
    Swipe    1774    1025    1774
    log    滑动成功
    comment    选择出行—星级酒店
    click element    xpath=/hierarchy/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.widget.FrameLayout/android.widget.FrameLayout/android.widget.FrameLayout/android.widget.FrameLayout[4]/android.widget.FrameLayout[1]/android.widget.LinearLayout/android.view.ViewGroup[2]/android.widget.RelativeLayout/android.widget.LinearLayout/android.view.ViewGroup/android.widget.ScrollView/android.widget.RelativeLayout/androidx.recyclerview.widget.RecyclerView/android.widget.LinearLayout[8]/android.widget.TextView
    Wait Until Element Is Visible    id=com.ecarx.adnavi:id/module_search_search_result_tv_search_content
    ${text}    get text    id=com.ecarx.adnavi:id/module_search_search_result_tv_search_content
    should not be empty    ${text}
    Comment    log    ${text}
    sleep    2
    comment    选择第一个公园地址进入详细页
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

特价酒店
    comment    点击搜索想去哪？
    click element    xpath=/hierarchy/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.widget.FrameLayout/android.widget.FrameLayout/android.widget.FrameLayout/android.widget.FrameLayout[4]/android.view.ViewGroup/android.view.ViewGroup/android.view.ViewGroup/android.view.ViewGroup
    sleep    2
    comment    滑动底图向上滑动
    Swipe    1774    1025    1774
    log    滑动成功
    comment    选择出行—特价酒店
    click element    xpath=/hierarchy/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.widget.FrameLayout/android.widget.FrameLayout/android.widget.FrameLayout/android.widget.FrameLayout[4]/android.widget.FrameLayout[1]/android.widget.LinearLayout/android.view.ViewGroup[2]/android.widget.RelativeLayout/android.widget.LinearLayout/android.view.ViewGroup/android.widget.ScrollView/android.widget.RelativeLayout/androidx.recyclerview.widget.RecyclerView/android.widget.LinearLayout[9]/android.widget.TextView
    Wait Until Element Is Visible    id=com.ecarx.adnavi:id/module_search_search_result_tv_search_content
    ${text}    get text    id=com.ecarx.adnavi:id/module_search_search_result_tv_search_content
    should not be empty    ${text}
    Comment    log    ${text}
    sleep    2
    comment    选择第一个特价酒店地址进入详细页
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

七天酒店
    comment    点击搜索想去哪？
    click element    xpath=/hierarchy/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.widget.FrameLayout/android.widget.FrameLayout/android.widget.FrameLayout/android.widget.FrameLayout[4]/android.view.ViewGroup/android.view.ViewGroup/android.view.ViewGroup/android.view.ViewGroup
    sleep    2
    comment    滑动底图向上滑动
    Swipe    1774    1025    1774
    log    滑动成功
    comment    选择出行—七天酒店
    click element    xpath=/hierarchy/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.widget.FrameLayout/android.widget.FrameLayout/android.widget.FrameLayout/android.widget.FrameLayout[4]/android.widget.FrameLayout[1]/android.widget.LinearLayout/android.view.ViewGroup[2]/android.widget.RelativeLayout/android.widget.LinearLayout/android.view.ViewGroup/android.widget.ScrollView/android.widget.RelativeLayout/androidx.recyclerview.widget.RecyclerView/android.widget.LinearLayout[10]/android.widget.TextView
    Wait Until Element Is Visible    id=com.ecarx.adnavi:id/module_search_search_result_tv_search_content
    ${text}    get text    id=com.ecarx.adnavi:id/module_search_search_result_tv_search_content
    should not be empty    ${text}
    Comment    log    ${text}
    sleep    2
    comment    选择第一个七天酒店地址进入详细页
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

宾馆
    comment    点击搜索想去哪？
    click element    xpath=/hierarchy/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.widget.FrameLayout/android.widget.FrameLayout/android.widget.FrameLayout/android.widget.FrameLayout[4]/android.view.ViewGroup/android.view.ViewGroup/android.view.ViewGroup/android.view.ViewGroup
    sleep    2
    comment    滑动底图向上滑动
    Swipe    1774    1025    1774
    log    滑动成功
    comment    选择出行—宾馆
    click element    xpath=/hierarchy/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.widget.FrameLayout/android.widget.FrameLayout/android.widget.FrameLayout/android.widget.FrameLayout[4]/android.widget.FrameLayout[1]/android.widget.LinearLayout/android.view.ViewGroup[2]/android.widget.RelativeLayout/android.widget.LinearLayout/android.view.ViewGroup/android.widget.ScrollView/android.widget.RelativeLayout/androidx.recyclerview.widget.RecyclerView/android.widget.LinearLayout[11]/android.widget.TextView
    Wait Until Element Is Visible    id=com.ecarx.adnavi:id/module_search_search_result_tv_search_content
    ${text}    get text    id=com.ecarx.adnavi:id/module_search_search_result_tv_search_content
    should not be empty    ${text}
    Comment    log    ${text}
    sleep    2
    comment    选择第一个宾馆地址进入详细页
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

公寓
    comment    点击搜索想去哪？
    click element    xpath=/hierarchy/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.widget.FrameLayout/android.widget.FrameLayout/android.widget.FrameLayout/android.widget.FrameLayout[4]/android.view.ViewGroup/android.view.ViewGroup/android.view.ViewGroup/android.view.ViewGroup
    sleep    2
    comment    滑动底图向上滑动
    Swipe    1774    1025    1774
    log    滑动成功
    comment    选择出行—公寓
    click element    xpath=/hierarchy/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.widget.FrameLayout/android.widget.FrameLayout/android.widget.FrameLayout/android.widget.FrameLayout[4]/android.widget.FrameLayout[1]/android.widget.LinearLayout/android.view.ViewGroup[2]/android.widget.RelativeLayout/android.widget.LinearLayout/android.view.ViewGroup/android.widget.ScrollView/android.widget.RelativeLayout/androidx.recyclerview.widget.RecyclerView/android.widget.LinearLayout[12]/android.widget.TextView
    Wait Until Element Is Visible    id=com.ecarx.adnavi:id/module_search_search_result_tv_search_content
    ${text}    get text    id=com.ecarx.adnavi:id/module_search_search_result_tv_search_content
    should not be empty    ${text}
    Comment    log    ${text}
    sleep    2
    comment    选择第一个公寓地址进入详细页
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

青年旅社
    comment    点击搜索想去哪？
    click element    xpath=/hierarchy/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.widget.FrameLayout/android.widget.FrameLayout/android.widget.FrameLayout/android.widget.FrameLayout[4]/android.view.ViewGroup/android.view.ViewGroup/android.view.ViewGroup/android.view.ViewGroup
    sleep    2
    comment    滑动底图向上滑动
    Swipe    1774    1025    1774
    log    滑动成功
    comment    选择出行—青年旅社
    click element    xpath=/hierarchy/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.widget.FrameLayout/android.widget.FrameLayout/android.widget.FrameLayout/android.widget.FrameLayout[4]/android.widget.FrameLayout[1]/android.widget.LinearLayout/android.view.ViewGroup[2]/android.widget.RelativeLayout/android.widget.LinearLayout/android.view.ViewGroup/android.widget.ScrollView/android.widget.RelativeLayout/androidx.recyclerview.widget.RecyclerView/android.widget.LinearLayout[13]/android.widget.TextView
    Wait Until Element Is Visible    id=com.ecarx.adnavi:id/module_search_search_result_tv_search_content
    ${text}    get text    id=com.ecarx.adnavi:id/module_search_search_result_tv_search_content
    should not be empty    ${text}
    Comment    log    ${text}
    sleep    2
    comment    选择第一个青年旅社地址进入详细页
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
