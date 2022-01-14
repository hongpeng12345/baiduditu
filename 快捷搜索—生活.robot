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

超市
    comment    点击搜索想去哪？
    click element    xpath=/hierarchy/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.widget.FrameLayout/android.widget.FrameLayout/android.widget.FrameLayout/android.widget.FrameLayout[4]/android.view.ViewGroup/android.view.ViewGroup/android.view.ViewGroup/android.view.ViewGroup
    sleep    2
    comment    滑动底图向上滑动
    Swipe    1774    1025    1774    620    8000
    log    滑动成功
    comment    选择出行—超市
    click element    xpath=/hierarchy/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.widget.FrameLayout/android.widget.FrameLayout/android.widget.FrameLayout/android.widget.FrameLayout[4]/android.widget.FrameLayout[1]/android.widget.LinearLayout/android.view.ViewGroup[2]/android.widget.RelativeLayout/android.widget.LinearLayout/android.view.ViewGroup/android.widget.ScrollView/android.widget.RelativeLayout/androidx.recyclerview.widget.RecyclerView/android.widget.LinearLayout[2]/android.widget.TextView
    Wait Until Element Is Visible    id=com.ecarx.adnavi:id/module_search_search_result_tv_search_content
    ${text}    get text    id=com.ecarx.adnavi:id/module_search_search_result_tv_search_content
    should not be empty    ${text}
    Comment    log    ${text}
    sleep    2
    comment    选择第一个超市地址进入详细页
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

医院
    comment    点击搜索想去哪？
    click element    xpath=/hierarchy/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.widget.FrameLayout/android.widget.FrameLayout/android.widget.FrameLayout/android.widget.FrameLayout[4]/android.view.ViewGroup/android.view.ViewGroup/android.view.ViewGroup/android.view.ViewGroup
    sleep    2
    comment    滑动底图向上滑动
    Swipe    1774    1025    1774    620    8000
    log    滑动成功
    comment    选择出行—医院
    click element    xpath=/hierarchy/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.widget.FrameLayout/android.widget.FrameLayout/android.widget.FrameLayout/android.widget.FrameLayout[4]/android.widget.FrameLayout[1]/android.widget.LinearLayout/android.view.ViewGroup[2]/android.widget.RelativeLayout/android.widget.LinearLayout/android.view.ViewGroup/android.widget.ScrollView/android.widget.RelativeLayout/androidx.recyclerview.widget.RecyclerView/android.widget.LinearLayout[6]/android.widget.TextView
    Wait Until Element Is Visible    id=com.ecarx.adnavi:id/module_search_search_result_tv_search_content
    ${text}    get text    id=com.ecarx.adnavi:id/module_search_search_result_tv_search_content
    should not be empty    ${text}
    Comment    log    ${text}
    sleep    2
    comment    选择第一个医院地址进入详细页
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

药店
    comment    点击搜索想去哪？
    click element    xpath=/hierarchy/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.widget.FrameLayout/android.widget.FrameLayout/android.widget.FrameLayout/android.widget.FrameLayout[4]/android.view.ViewGroup/android.view.ViewGroup/android.view.ViewGroup/android.view.ViewGroup
    sleep    2
    comment    滑动底图向上
    Swipe    1774    1025    1774    620    8000
    log    滑动成功
    comment    选择出行—药店
    click element    xpath=/hierarchy/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.widget.FrameLayout/android.widget.FrameLayout/android.widget.FrameLayout/android.widget.FrameLayout[4]/android.widget.FrameLayout[1]/android.widget.LinearLayout/android.view.ViewGroup[2]/android.widget.RelativeLayout/android.widget.LinearLayout/android.view.ViewGroup/android.widget.ScrollView/android.widget.RelativeLayout/androidx.recyclerview.widget.RecyclerView/android.widget.LinearLayout[7]/android.widget.TextView
    Wait Until Element Is Visible    id=com.ecarx.adnavi:id/module_search_search_result_tv_search_content
    ${text}    get text    id=com.ecarx.adnavi:id/module_search_search_result_tv_search_content
    should not be empty    ${text}
    Comment    log    ${text}
    sleep    2
    comment    选择第一个药店地址进入详细页
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

厕所
    comment    点击搜索想去哪？
    click element    xpath=/hierarchy/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.widget.FrameLayout/android.widget.FrameLayout/android.widget.FrameLayout/android.widget.FrameLayout[4]/android.view.ViewGroup/android.view.ViewGroup/android.view.ViewGroup/android.view.ViewGroup
    sleep    2
    comment    滑动底图向上
    Swipe    1774    1025    1774    620    8000
    log    滑动成功
    comment    选择出行—厕所
    click element    xpath=/hierarchy/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.widget.FrameLayout/android.widget.FrameLayout/android.widget.FrameLayout/android.widget.FrameLayout[4]/android.widget.FrameLayout[1]/android.widget.LinearLayout/android.view.ViewGroup[2]/android.widget.RelativeLayout/android.widget.LinearLayout/android.view.ViewGroup/android.widget.ScrollView/android.widget.RelativeLayout/androidx.recyclerview.widget.RecyclerView/android.widget.LinearLayout[8]/android.widget.TextView
    Wait Until Element Is Visible    id=com.ecarx.adnavi:id/module_search_search_result_tv_search_content
    ${text}    get text    id=com.ecarx.adnavi:id/module_search_search_result_tv_search_content
    should not be empty    ${text}
    Comment    log    ${text}
    sleep    2
    comment    选择第一个厕所地址进入详细页
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

快递
    comment    点击搜索想去哪？
    click element    xpath=/hierarchy/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.widget.FrameLayout/android.widget.FrameLayout/android.widget.FrameLayout/android.widget.FrameLayout[4]/android.view.ViewGroup/android.view.ViewGroup/android.view.ViewGroup/android.view.ViewGroup
    sleep    2
    comment    滑动底图向上
    Swipe    1774    1025    1774    620    8000
    log    滑动成功
    comment    选择出行—快递
    click element    xpath=/hierarchy/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.widget.FrameLayout/android.widget.FrameLayout/android.widget.FrameLayout/android.widget.FrameLayout[4]/android.widget.FrameLayout[1]/android.widget.LinearLayout/android.view.ViewGroup[2]/android.widget.RelativeLayout/android.widget.LinearLayout/android.view.ViewGroup/android.widget.ScrollView/android.widget.RelativeLayout/androidx.recyclerview.widget.RecyclerView/android.widget.LinearLayout[9]/android.widget.TextView
    Wait Until Element Is Visible    id=com.ecarx.adnavi:id/module_search_search_result_tv_search_content
    ${text}    get text    id=com.ecarx.adnavi:id/module_search_search_result_tv_search_content
    should not be empty    ${text}
    Comment    log    ${text}
    sleep    2
    comment    选择第一个快递地址进入详细页
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

花店
    comment    点击搜索想去哪？
    click element    xpath=/hierarchy/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.widget.FrameLayout/android.widget.FrameLayout/android.widget.FrameLayout/android.widget.FrameLayout[4]/android.view.ViewGroup/android.view.ViewGroup/android.view.ViewGroup/android.view.ViewGroup
    sleep    2
    comment    滑动底图向上
    Swipe    1774    1025    1774    620    8000
    log    滑动成功
    comment    选择出行—花店
    click element    xpath=/hierarchy/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.widget.FrameLayout/android.widget.FrameLayout/android.widget.FrameLayout/android.widget.FrameLayout[4]/android.widget.FrameLayout[1]/android.widget.LinearLayout/android.view.ViewGroup[2]/android.widget.RelativeLayout/android.widget.LinearLayout/android.view.ViewGroup/android.widget.ScrollView/android.widget.RelativeLayout/androidx.recyclerview.widget.RecyclerView/android.widget.LinearLayout[10]/android.widget.TextView
    Wait Until Element Is Visible    id=com.ecarx.adnavi:id/module_search_search_result_tv_search_content
    ${text}    get text    id=com.ecarx.adnavi:id/module_search_search_result_tv_search_content
    should not be empty    ${text}
    Comment    log    ${text}
    sleep    2
    comment    选择第一个花店地址进入详细页
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

照相馆
    comment    点击搜索想去哪？
    click element    xpath=/hierarchy/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.widget.FrameLayout/android.widget.FrameLayout/android.widget.FrameLayout/android.widget.FrameLayout[4]/android.view.ViewGroup/android.view.ViewGroup/android.view.ViewGroup/android.view.ViewGroup
    sleep    2
    comment    滑动底图向上
    Swipe    1774    1025    1774    620    8000
    log    滑动成功
    comment    选择出行—照相馆
    click element    xpath=/hierarchy/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.widget.FrameLayout/android.widget.FrameLayout/android.widget.FrameLayout/android.widget.FrameLayout[4]/android.widget.FrameLayout[1]/android.widget.LinearLayout/android.view.ViewGroup[2]/android.widget.RelativeLayout/android.widget.LinearLayout/android.view.ViewGroup/android.widget.ScrollView/android.widget.RelativeLayout/androidx.recyclerview.widget.RecyclerView/android.widget.LinearLayout[11]/android.widget.TextView
    Wait Until Element Is Visible    id=com.ecarx.adnavi:id/module_search_search_result_tv_search_content
    ${text}    get text    id=com.ecarx.adnavi:id/module_search_search_result_tv_search_content
    should not be empty    ${text}
    Comment    log    ${text}
    sleep    2
    comment    选择第一个照相馆地址进入详细页
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

幼儿园
    comment    点击搜索想去哪？
    click element    xpath=/hierarchy/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.widget.FrameLayout/android.widget.FrameLayout/android.widget.FrameLayout/android.widget.FrameLayout[4]/android.view.ViewGroup/android.view.ViewGroup/android.view.ViewGroup/android.view.ViewGroup
    sleep    2
    comment    滑动底图向上
    Swipe    1774    1025    1774    620    8000
    log    滑动成功
    comment    选择出行—幼儿园
    click element    xpath=/hierarchy/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.widget.FrameLayout/android.widget.FrameLayout/android.widget.FrameLayout/android.widget.FrameLayout[4]/android.widget.FrameLayout[1]/android.widget.LinearLayout/android.view.ViewGroup[2]/android.widget.RelativeLayout/android.widget.LinearLayout/android.view.ViewGroup/android.widget.ScrollView/android.widget.RelativeLayout/androidx.recyclerview.widget.RecyclerView/android.widget.LinearLayout[12]/android.widget.TextView
    Wait Until Element Is Visible    id=com.ecarx.adnavi:id/module_search_search_result_tv_search_content
    ${text}    get text    id=com.ecarx.adnavi:id/module_search_search_result_tv_search_content
    should not be empty    ${text}
    Comment    log    ${text}
    sleep    2
    comment    选择第一个幼儿园地址进入详细页
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

菜市场
    comment    点击搜索想去哪？
    click element    xpath=/hierarchy/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.widget.FrameLayout/android.widget.FrameLayout/android.widget.FrameLayout/android.widget.FrameLayout[4]/android.view.ViewGroup/android.view.ViewGroup/android.view.ViewGroup/android.view.ViewGroup
    sleep    2
    comment    滑动底图向上
    Swipe    1774    1025    1774    620    8000
    log    滑动成功
    comment    选择出行—菜市场
    click element    xpath=/hierarchy/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.widget.FrameLayout/android.widget.FrameLayout/android.widget.FrameLayout/android.widget.FrameLayout[4]/android.widget.FrameLayout[1]/android.widget.LinearLayout/android.view.ViewGroup[2]/android.widget.RelativeLayout/android.widget.LinearLayout/android.view.ViewGroup/android.widget.ScrollView/android.widget.RelativeLayout/androidx.recyclerview.widget.RecyclerView/android.widget.LinearLayout[9]/android.widget.TextView
    sleep    2
    comment    选择第一个菜市场地址进入详细页
    click element    xpath=/hierarchy/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.widget.FrameLayout/android.widget.FrameLayout/android.widget.FrameLayout/android.widget.FrameLayout[4]/android.widget.FrameLayout[1]/android.widget.LinearLayout/android.view.ViewGroup[2]/android.widget.RelativeLayout/android.widget.LinearLayout/android.view.ViewGroup/android.widget.ScrollView/android.widget.RelativeLayout/androidx.recyclerview.widget.RecyclerView/android.widget.LinearLayout[13]/android.widget.TextView
    Wait Until Element Is Visible    id=com.ecarx.adnavi:id/module_search_search_result_tv_search_content
    ${text}    get text    id=com.ecarx.adnavi:id/module_search_search_result_tv_search_content
    should not be empty    ${text}
    Comment    log    ${text}
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

小学
    comment    点击搜索想去哪？
    click element    xpath=/hierarchy/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.widget.FrameLayout/android.widget.FrameLayout/android.widget.FrameLayout/android.widget.FrameLayout[4]/android.view.ViewGroup/android.view.ViewGroup/android.view.ViewGroup/android.view.ViewGroup
    sleep    2
    comment    滑动底图向上
    Swipe    1774    1025    1774    620    8000
    log    滑动成功
    comment    选择出行—小学
    click element    xpath=/hierarchy/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.widget.FrameLayout/android.widget.FrameLayout/android.widget.FrameLayout/android.widget.FrameLayout[4]/android.widget.FrameLayout[1]/android.widget.LinearLayout/android.view.ViewGroup[2]/android.widget.RelativeLayout/android.widget.LinearLayout/android.view.ViewGroup/android.widget.ScrollView/android.widget.RelativeLayout/androidx.recyclerview.widget.RecyclerView/android.widget.LinearLayout[14]/android.widget.TextView
    Wait Until Element Is Visible    id=com.ecarx.adnavi:id/module_search_search_result_tv_search_content
    ${text}    get text    id=com.ecarx.adnavi:id/module_search_search_result_tv_search_content
    should not be empty    ${text}
    Comment    log    ${text}
    sleep    2
    comment    选择第一个小学地址进入详细页
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

书店
    comment    点击搜索想去哪？
    click element    xpath=/hierarchy/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.widget.FrameLayout/android.widget.FrameLayout/android.widget.FrameLayout/android.widget.FrameLayout[4]/android.view.ViewGroup/android.view.ViewGroup/android.view.ViewGroup/android.view.ViewGroup
    sleep    2
    comment    滑动底图向上
    Swipe    1774    1025    1774    620    8000
    log    滑动成功
    comment    选择出行—书店
    click element    xpath=/hierarchy/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.widget.FrameLayout/android.widget.FrameLayout/android.widget.FrameLayout/android.widget.FrameLayout[4]/android.widget.FrameLayout[1]/android.widget.LinearLayout/android.view.ViewGroup[2]/android.widget.RelativeLayout/android.widget.LinearLayout/android.view.ViewGroup/android.widget.ScrollView/android.widget.RelativeLayout/androidx.recyclerview.widget.RecyclerView/android.widget.LinearLayout[15]/android.widget.TextView
    Wait Until Element Is Visible    id=com.ecarx.adnavi:id/module_search_search_result_tv_search_content
    ${text}    get text    id=com.ecarx.adnavi:id/module_search_search_result_tv_search_content
    should not be empty    ${text}
    Comment    log    ${text}
    sleep    2
    comment    选择第一个书店地址进入详细页
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

车管所
    comment    点击搜索想去哪？
    click element    xpath=/hierarchy/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.widget.FrameLayout/android.widget.FrameLayout/android.widget.FrameLayout/android.widget.FrameLayout[4]/android.view.ViewGroup/android.view.ViewGroup/android.view.ViewGroup/android.view.ViewGroup
    sleep    2
    comment    滑动底图向上
    Swipe    1774    1025    1774    620    8000
    log    滑动成功
    comment    选择出行—车管所
    click element    xpath=/hierarchy/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.widget.FrameLayout/android.widget.FrameLayout/android.widget.FrameLayout/android.widget.FrameLayout[4]/android.widget.FrameLayout[1]/android.widget.LinearLayout/android.view.ViewGroup[2]/android.widget.RelativeLayout/android.widget.LinearLayout/android.view.ViewGroup/android.widget.ScrollView/android.widget.RelativeLayout/androidx.recyclerview.widget.RecyclerView/android.widget.LinearLayout[16]/android.widget.TextView
    Wait Until Element Is Visible    id=com.ecarx.adnavi:id/module_search_search_result_tv_search_content
    ${text}    get text    id=com.ecarx.adnavi:id/module_search_search_result_tv_search_content
    should not be empty    ${text}
    Comment    log    ${text}
    sleep    2
    comment    选择第一个车管所地址进入详细页
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

眼镜店
    comment    点击搜索想去哪？
    click element    xpath=/hierarchy/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.widget.FrameLayout/android.widget.FrameLayout/android.widget.FrameLayout/android.widget.FrameLayout[4]/android.view.ViewGroup/android.view.ViewGroup/android.view.ViewGroup/android.view.ViewGroup
    sleep    2
    comment    滑动底图向上
    Swipe    1774    1025    1774    620    8000
    log    滑动成功
    comment    选择出行—眼镜店
    click element    xpath=/hierarchy/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.widget.FrameLayout/android.widget.FrameLayout/android.widget.FrameLayout/android.widget.FrameLayout[4]/android.widget.FrameLayout[1]/android.widget.LinearLayout/android.view.ViewGroup[2]/android.widget.RelativeLayout/android.widget.LinearLayout/android.view.ViewGroup/android.widget.ScrollView/android.widget.RelativeLayout/androidx.recyclerview.widget.RecyclerView/android.widget.LinearLayout[17]/android.widget.TextView
    Wait Until Element Is Visible    id=com.ecarx.adnavi:id/module_search_search_result_tv_search_content
    ${text}    get text    id=com.ecarx.adnavi:id/module_search_search_result_tv_search_content
    should not be empty    ${text}
    Comment    log    ${text}
    sleep    2
    comment    选择第一个眼镜店地址进入详细页
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

五金店
    comment    点击搜索想去哪？
    click element    xpath=/hierarchy/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.widget.FrameLayout/android.widget.FrameLayout/android.widget.FrameLayout/android.widget.FrameLayout[4]/android.view.ViewGroup/android.view.ViewGroup/android.view.ViewGroup/android.view.ViewGroup
    sleep    2
    comment    滑动底图向上
    Swipe    1774    1025    1774    620    8000
    log    滑动成功
    comment    选择出行—五金店
    click element    xpath=/hierarchy/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.widget.FrameLayout/android.widget.FrameLayout/android.widget.FrameLayout/android.widget.FrameLayout[4]/android.widget.FrameLayout[1]/android.widget.LinearLayout/android.view.ViewGroup[2]/android.widget.RelativeLayout/android.widget.LinearLayout/android.view.ViewGroup/android.widget.ScrollView/android.widget.RelativeLayout/androidx.recyclerview.widget.RecyclerView/android.widget.LinearLayout[18]/android.widget.TextView
    Wait Until Element Is Visible    id=com.ecarx.adnavi:id/module_search_search_result_tv_search_content
    ${text}    get text    id=com.ecarx.adnavi:id/module_search_search_result_tv_search_content
    should not be empty    ${text}
    Comment    log    ${text}
    sleep    2
    comment    选择第一个五金店地址进入详细页
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

美容美发
    comment    点击搜索想去哪？
    click element    xpath=/hierarchy/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.widget.FrameLayout/android.widget.FrameLayout/android.widget.FrameLayout/android.widget.FrameLayout[4]/android.view.ViewGroup/android.view.ViewGroup/android.view.ViewGroup/android.view.ViewGroup
    sleep    2
    comment    滑动底图向上
    Swipe    1774    1025    1774    620    8000
    log    滑动成功
    comment    选择出行—美容美发
    click element    xpath=/hierarchy/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.widget.FrameLayout/android.widget.FrameLayout/android.widget.FrameLayout/android.widget.FrameLayout[4]/android.widget.FrameLayout[1]/android.widget.LinearLayout/android.view.ViewGroup[2]/android.widget.RelativeLayout/android.widget.LinearLayout/android.view.ViewGroup/android.widget.ScrollView/android.widget.RelativeLayout/androidx.recyclerview.widget.RecyclerView/android.widget.LinearLayout[19]/android.widget.TextView
    Wait Until Element Is Visible    id=com.ecarx.adnavi:id/module_search_search_result_tv_search_content
    ${text}    get text    id=com.ecarx.adnavi:id/module_search_search_result_tv_search_content
    should not be empty    ${text}
    Comment    log    ${text}
    sleep    2
    comment    选择第一个美容美发地址进入详细页
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

移动营业厅
    comment    点击搜索想去哪？
    click element    xpath=/hierarchy/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.widget.FrameLayout/android.widget.FrameLayout/android.widget.FrameLayout/android.widget.FrameLayout[4]/android.view.ViewGroup/android.view.ViewGroup/android.view.ViewGroup/android.view.ViewGroup
    sleep    2
    comment    滑动底图向上
    Swipe    1774    1025    1774    620    8000
    log    滑动成功
    comment    选择出行—移动营业厅
    click element    xpath=/hierarchy/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.widget.FrameLayout/android.widget.FrameLayout/android.widget.FrameLayout/android.widget.FrameLayout[4]/android.widget.FrameLayout[1]/android.widget.LinearLayout/android.view.ViewGroup[2]/android.widget.RelativeLayout/android.widget.LinearLayout/android.view.ViewGroup/android.widget.ScrollView/android.widget.RelativeLayout/androidx.recyclerview.widget.RecyclerView/android.widget.LinearLayout[20]/android.widget.TextView
    Wait Until Element Is Visible    id=com.ecarx.adnavi:id/module_search_search_result_tv_search_content
    ${text}    get text    id=com.ecarx.adnavi:id/module_search_search_result_tv_search_content
    should not be empty    ${text}
    Comment    log    ${text}
    sleep    2
    comment    选择第一个移动营业厅地址进入详细页
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

联通营业厅
    comment    点击搜索想去哪？
    click element    xpath=/hierarchy/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.widget.FrameLayout/android.widget.FrameLayout/android.widget.FrameLayout/android.widget.FrameLayout[4]/android.view.ViewGroup/android.view.ViewGroup/android.view.ViewGroup/android.view.ViewGroup
    sleep    2
    comment    滑动底图向上
    Swipe    1774    1025    1774    620    8000
    log    滑动成功
    comment    选择出行—联通营业厅
    click element    xpath=/hierarchy/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.widget.FrameLayout/android.widget.FrameLayout/android.widget.FrameLayout/android.widget.FrameLayout[4]/android.widget.FrameLayout[1]/android.widget.LinearLayout/android.view.ViewGroup[2]/android.widget.RelativeLayout/android.widget.LinearLayout/android.view.ViewGroup/android.widget.ScrollView/android.widget.RelativeLayout/androidx.recyclerview.widget.RecyclerView/android.widget.LinearLayout[21]/android.widget.TextView
    Wait Until Element Is Visible    id=com.ecarx.adnavi:id/module_search_search_result_tv_search_content
    ${text}    get text    id=com.ecarx.adnavi:id/module_search_search_result_tv_search_content
    should not be empty    ${text}
    Comment    log    ${text}
    sleep    2
    comment    选择第一个地址联通营业厅进入详细页
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

电信营业厅
    comment    点击搜索想去哪？
    click element    xpath=/hierarchy/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.widget.FrameLayout/android.widget.FrameLayout/android.widget.FrameLayout/android.widget.FrameLayout[4]/android.view.ViewGroup/android.view.ViewGroup/android.view.ViewGroup/android.view.ViewGroup
    sleep    2
    comment    滑动底图向上
    Swipe    1774    1025    1774    620    8000
    log    滑动成功
    comment    选择出行—电信营业厅
    click element    xpath=/hierarchy/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.widget.FrameLayout/android.widget.FrameLayout/android.widget.FrameLayout/android.widget.FrameLayout[4]/android.widget.FrameLayout[1]/android.widget.LinearLayout/android.view.ViewGroup[2]/android.widget.RelativeLayout/android.widget.LinearLayout/android.view.ViewGroup/android.widget.ScrollView/android.widget.RelativeLayout/androidx.recyclerview.widget.RecyclerView/android.widget.LinearLayout[22]/android.widget.TextView
    Wait Until Element Is Visible    id=com.ecarx.adnavi:id/module_search_search_result_tv_search_content
    ${text}    get text    id=com.ecarx.adnavi:id/module_search_search_result_tv_search_content
    should not be empty    ${text}
    Comment    log    ${text}
    sleep    2
    comment    选择第一个电信营业厅地址进入详细页
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

鲜花
    comment    点击搜索想去哪？
    click element    xpath=/hierarchy/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.widget.FrameLayout/android.widget.FrameLayout/android.widget.FrameLayout/android.widget.FrameLayout[4]/android.view.ViewGroup/android.view.ViewGroup/android.view.ViewGroup/android.view.ViewGroup
    sleep    2
    comment    滑动底图向上
    Swipe    1774    1025    1774    620    8000
    log    滑动成功
    comment    选择出行—鲜花
    click element    xpath=/hierarchy/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.widget.FrameLayout/android.widget.FrameLayout/android.widget.FrameLayout/android.widget.FrameLayout[4]/android.widget.FrameLayout[1]/android.widget.LinearLayout/android.view.ViewGroup[2]/android.widget.RelativeLayout/android.widget.LinearLayout/android.view.ViewGroup/android.widget.ScrollView/android.widget.RelativeLayout/androidx.recyclerview.widget.RecyclerView/android.widget.LinearLayout[23]/android.widget.TextView
    Wait Until Element Is Visible    id=com.ecarx.adnavi:id/module_search_search_result_tv_search_content
    ${text}    get text    id=com.ecarx.adnavi:id/module_search_search_result_tv_search_content
    should not be empty    ${text}
    Comment    log    ${text}
    sleep    2
    comment    选择第一个鲜花地址进入详细页
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

ATM
    comment    点击搜索想去哪？
    click element    xpath=/hierarchy/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.widget.FrameLayout/android.widget.FrameLayout/android.widget.FrameLayout/android.widget.FrameLayout[4]/android.view.ViewGroup/android.view.ViewGroup/android.view.ViewGroup/android.view.ViewGroup
    sleep    2
    comment    滑动底图向上
    Swipe    1774    1025    1774    620    8000
    log    滑动成功
    comment    选择出行—ATM
    click element    xpath=/hierarchy/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.widget.FrameLayout/android.widget.FrameLayout/android.widget.FrameLayout/android.widget.FrameLayout[4]/android.widget.FrameLayout[1]/android.widget.LinearLayout/android.view.ViewGroup[2]/android.widget.RelativeLayout/android.widget.LinearLayout/android.view.ViewGroup/android.widget.ScrollView/android.widget.RelativeLayout/androidx.recyclerview.widget.RecyclerView/android.widget.LinearLayout[24]/android.widget.TextView
    Wait Until Element Is Visible    id=com.ecarx.adnavi:id/module_search_search_result_tv_search_content
    ${text}    get text    id=com.ecarx.adnavi:id/module_search_search_result_tv_search_content
    should not be empty    ${text}
    Comment    log    ${text}
    sleep    2
    comment    选择第一个ATM地址进入详细页
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

银行
    comment    点击搜索想去哪？
    click element    xpath=/hierarchy/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.widget.FrameLayout/android.widget.FrameLayout/android.widget.FrameLayout/android.widget.FrameLayout[4]/android.view.ViewGroup/android.view.ViewGroup/android.view.ViewGroup/android.view.ViewGroup
    sleep    2
    comment    滑动底图向上
    Swipe    1774    1025    1774    620    8000
    log    滑动成功
    comment    选择出行—银行
    click element    xpath=/hierarchy/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.widget.FrameLayout/android.widget.FrameLayout/android.widget.FrameLayout/android.widget.FrameLayout[4]/android.widget.FrameLayout[1]/android.widget.LinearLayout/android.view.ViewGroup[2]/android.widget.RelativeLayout/android.widget.LinearLayout/android.view.ViewGroup/android.widget.ScrollView/android.widget.RelativeLayout/androidx.recyclerview.widget.RecyclerView/android.widget.LinearLayout[25]/android.widget.TextView
    Wait Until Element Is Visible    id=com.ecarx.adnavi:id/module_search_search_result_tv_search_content
    ${text}    get text    id=com.ecarx.adnavi:id/module_search_search_result_tv_search_content
    should not be empty    ${text}
    Comment    log    ${text}
    sleep    2
    comment    选择第一个银行地址进入详细页
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

商场
    comment    点击搜索想去哪？
    click element    xpath=/hierarchy/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.widget.FrameLayout/android.widget.FrameLayout/android.widget.FrameLayout/android.widget.FrameLayout[4]/android.view.ViewGroup/android.view.ViewGroup/android.view.ViewGroup/android.view.ViewGroup
    sleep    2
    comment    滑动底图向上
    Swipe    1774    1025    1774    620    8000
    log    滑动成功
    comment    选择出行—商场
    click element    xpath=/hierarchy/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.widget.FrameLayout/android.widget.FrameLayout/android.widget.FrameLayout/android.widget.FrameLayout[4]/android.widget.FrameLayout[1]/android.widget.LinearLayout/android.view.ViewGroup[2]/android.widget.RelativeLayout/android.widget.LinearLayout/android.view.ViewGroup/android.widget.ScrollView/android.widget.RelativeLayout/androidx.recyclerview.widget.RecyclerView/android.widget.LinearLayout[26]/android.widget.TextView
    Wait Until Element Is Visible    id=com.ecarx.adnavi:id/module_search_search_result_tv_search_content
    ${text}    get text    id=com.ecarx.adnavi:id/module_search_search_result_tv_search_content
    should not be empty    ${text}
    Comment    log    ${text}
    sleep    2
    comment    选择第一个商场地址进入详细页
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

万达广场
    comment    点击搜索想去哪？
    click element    xpath=/hierarchy/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.widget.FrameLayout/android.widget.FrameLayout/android.widget.FrameLayout/android.widget.FrameLayout[4]/android.view.ViewGroup/android.view.ViewGroup/android.view.ViewGroup/android.view.ViewGroup
    sleep    2
    comment    滑动底图向上
    Swipe    1774    1025    1774    620    8000
    log    滑动成功
    comment    选择出行—万达广场
    click element    xpath=/hierarchy/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.widget.FrameLayout/android.widget.FrameLayout/android.widget.FrameLayout/android.widget.FrameLayout[4]/android.widget.FrameLayout[1]/android.widget.LinearLayout/android.view.ViewGroup[2]/android.widget.RelativeLayout/android.widget.LinearLayout/android.view.ViewGroup/android.widget.ScrollView/android.widget.RelativeLayout/androidx.recyclerview.widget.RecyclerView/android.widget.LinearLayout[27]/android.widget.TextView
    Wait Until Element Is Visible    id=com.ecarx.adnavi:id/module_search_search_result_tv_search_content
    ${text}    get text    id=com.ecarx.adnavi:id/module_search_search_result_tv_search_content
    should not be empty    ${text}
    Comment    log    ${text}
    sleep    2
    comment    选择第一个万达广场地址进入详细页
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

丽人
    comment    点击搜索想去哪？
    click element    xpath=/hierarchy/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.widget.FrameLayout/android.widget.FrameLayout/android.widget.FrameLayout/android.widget.FrameLayout[4]/android.view.ViewGroup/android.view.ViewGroup/android.view.ViewGroup/android.view.ViewGroup
    sleep    2
    comment    滑动底图向上
    Swipe    1774    1025    1774    620    8000
    log    滑动成功
    comment    选择出行—丽人
    click element    xpath=/hierarchy/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.widget.FrameLayout/android.widget.FrameLayout/android.widget.FrameLayout/android.widget.FrameLayout[4]/android.widget.FrameLayout[1]/android.widget.LinearLayout/android.view.ViewGroup[2]/android.widget.RelativeLayout/android.widget.LinearLayout/android.view.ViewGroup/android.widget.ScrollView/android.widget.RelativeLayout/androidx.recyclerview.widget.RecyclerView/android.widget.LinearLayout[28]/android.widget.TextView
    Wait Until Element Is Visible    id=com.ecarx.adnavi:id/module_search_search_result_tv_search_content
    ${text}    get text    id=com.ecarx.adnavi:id/module_search_search_result_tv_search_content
    should not be empty    ${text}
    Comment    log    ${text}
    sleep    2
    comment    选择第一个丽人地址进入详细页
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

宜家
    comment    点击搜索想去哪？
    click element    xpath=/hierarchy/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.widget.FrameLayout/android.widget.FrameLayout/android.widget.FrameLayout/android.widget.FrameLayout[4]/android.view.ViewGroup/android.view.ViewGroup/android.view.ViewGroup/android.view.ViewGroup
    sleep    2
    comment    滑动底图向上
    Swipe    1774    1025    1774    620    8000
    log    滑动成功
    comment    选择出行—宜家
    click element    xpath=/hierarchy/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.widget.FrameLayout/android.widget.FrameLayout/android.widget.FrameLayout/android.widget.FrameLayout[4]/android.widget.FrameLayout[1]/android.widget.LinearLayout/android.view.ViewGroup[2]/android.widget.RelativeLayout/android.widget.LinearLayout/android.view.ViewGroup/android.widget.ScrollView/android.widget.RelativeLayout/androidx.recyclerview.widget.RecyclerView/android.widget.LinearLayout[29]/android.widget.TextView
    Wait Until Element Is Visible    id=com.ecarx.adnavi:id/module_search_search_result_tv_search_content
    ${text}    get text    id=com.ecarx.adnavi:id/module_search_search_result_tv_search_content
    should not be empty    ${text}
    Comment    log    ${text}
    sleep    2
    comment    选择第一个宜家地址进入详细页
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
