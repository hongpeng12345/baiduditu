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

家（当前位置）
    comment    打开我的用户
    click element    xpath=//android.widget.ImageView[@content-desc="用户"]
    sleep    2
    comment    选择查看收藏夹
    click element    xpath=/hierarchy/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.widget.FrameLayout/android.widget.FrameLayout/android.widget.FrameLayout/android.widget.FrameLayout[4]/android.view.ViewGroup/android.widget.LinearLayout/android.widget.LinearLayout[2]/android.widget.TextView
    sleep    3
    comment    选择家
    click element    xpath=/hierarchy/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.widget.FrameLayout/android.widget.FrameLayout/android.widget.FrameLayout/android.widget.FrameLayout[4]/android.view.ViewGroup/android.widget.ListView/android.view.ViewGroup[1]/android.view.ViewGroup[1]/android.view.ViewGroup[1]
    sleep    3
    comment    选择当前位置
    click element    xpath=/hierarchy/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.widget.FrameLayout/android.widget.FrameLayout/android.widget.FrameLayout/android.widget.FrameLayout[4]/android.view.ViewGroup/android.view.ViewGroup/android.view.ViewGroup[2]/android.view.ViewGroup[1]
    sleep    2
    comment    返回用户管理界面
    click a point    61    111    200
    sleep    2

家（地图选点）
    comment    打开我的用户
    click element    xpath=//android.widget.ImageView[@content-desc="用户"]
    sleep    2
    comment    选择查看收藏夹
    click element    xpath=/hierarchy/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.widget.FrameLayout/android.widget.FrameLayout/android.widget.FrameLayout/android.widget.FrameLayout[4]/android.view.ViewGroup/android.widget.LinearLayout/android.widget.LinearLayout[2]/android.widget.TextView
    sleep    3
    comment    选择家
    click element    xpath=/hierarchy/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.widget.FrameLayout/android.widget.FrameLayout/android.widget.FrameLayout/android.widget.FrameLayout[4]/android.view.ViewGroup/android.widget.ListView/android.view.ViewGroup[1]/android.view.ViewGroup[1]/android.view.ViewGroup[1]
    sleep    3
    comment    选择地图选点
    click element    xpath=/hierarchy/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.widget.FrameLayout/android.widget.FrameLayout/android.widget.FrameLayout/android.widget.FrameLayout[4]/android.view.ViewGroup/android.view.ViewGroup/android.view.ViewGroup[2]/android.view.ViewGroup[2]
    sleep    2
    comment    设置为家
    click a point    400    1000    200
    sleep    2

历史搜索添加
    comment    打开我的用户
    click element    xpath=//android.widget.ImageView[@content-desc="用户"]
    sleep    2
    comment    选择查看收藏夹
    click element    xpath=/hierarchy/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.widget.FrameLayout/android.widget.FrameLayout/android.widget.FrameLayout/android.widget.FrameLayout[4]/android.view.ViewGroup/android.widget.LinearLayout/android.widget.LinearLayout[2]/android.widget.TextView
    sleep    3
    comment    选择家
    click element    xpath=/hierarchy/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.widget.FrameLayout/android.widget.FrameLayout/android.widget.FrameLayout/android.widget.FrameLayout[4]/android.view.ViewGroup/android.widget.ListView/android.view.ViewGroup[1]/android.view.ViewGroup[1]/android.view.ViewGroup[1]
    sleep    3
    comment    历史搜索第一条添加
    click element    xpath=(//android.widget.ImageView[@content-desc="添加"])[1]
    sleep    2
    comment    返回用户管理界面
    click a point    61    111    200
    sleep    2

家（常用充电站）
    comment    打开我的用户
    click element    xpath=//android.widget.ImageView[@content-desc="用户"]
    sleep    2
    comment    选择查看收藏夹
    click element    xpath=/hierarchy/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.widget.FrameLayout/android.widget.FrameLayout/android.widget.FrameLayout/android.widget.FrameLayout[4]/android.view.ViewGroup/android.widget.LinearLayout/android.widget.LinearLayout[2]/android.widget.TextView
    comment    选择常用充电（家）
    click element    xpath=/hierarchy/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.widget.FrameLayout/android.widget.FrameLayout/android.widget.FrameLayout/android.widget.FrameLayout[4]/android.view.ViewGroup/android.widget.ListView/android.view.ViewGroup[1]/android.view.ViewGroup[1]/android.view.ViewGroup[2]
    sleep    3
    comment    选择第一个充电站地址进入详细页
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

公司（当前位置）
    comment    打开我的用户
    click element    xpath=//android.widget.ImageView[@content-desc="用户"]
    sleep    2
    comment    选择查看收藏夹
    click element    xpath=/hierarchy/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.widget.FrameLayout/android.widget.FrameLayout/android.widget.FrameLayout/android.widget.FrameLayout[4]/android.view.ViewGroup/android.widget.LinearLayout/android.widget.LinearLayout[2]/android.widget.TextView
    comment    选择公司
    sleep    3
    click element    xpath=/hierarchy/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.widget.FrameLayout/android.widget.FrameLayout/android.widget.FrameLayout/android.widget.FrameLayout[4]/android.view.ViewGroup/android.widget.ListView/android.view.ViewGroup[1]/android.view.ViewGroup[2]/android.view.ViewGroup[1]
    sleep    3
    comment    选择当前位置
    click element    xpath=/hierarchy/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.widget.FrameLayout/android.widget.FrameLayout/android.widget.FrameLayout/android.widget.FrameLayout[4]/android.view.ViewGroup/android.view.ViewGroup/android.view.ViewGroup[2]/android.view.ViewGroup[1]
    sleep    2
    comment    返回用户管理界面
    click a point    61    111    200
    sleep    2

公司（地图选点）
    comment    打开我的用户
    click element    xpath=//android.widget.ImageView[@content-desc="用户"]
    sleep    2
    comment    选择查看收藏夹
    click element    xpath=/hierarchy/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.widget.FrameLayout/android.widget.FrameLayout/android.widget.FrameLayout/android.widget.FrameLayout[4]/android.view.ViewGroup/android.widget.LinearLayout/android.widget.LinearLayout[2]/android.widget.TextView
    sleep    3
    comment    选择公司
    click element    xpath=/hierarchy/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.widget.FrameLayout/android.widget.FrameLayout/android.widget.FrameLayout/android.widget.FrameLayout[4]/android.view.ViewGroup/android.widget.ListView/android.view.ViewGroup[1]/android.view.ViewGroup[1]/android.view.ViewGroup[1]
    sleep    3
    comment    选择地图选点
    click element    xpath=/hierarchy/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.widget.FrameLayout/android.widget.FrameLayout/android.widget.FrameLayout/android.widget.FrameLayout[4]/android.view.ViewGroup/android.view.ViewGroup/android.view.ViewGroup[2]/android.view.ViewGroup[2]
    sleep    2
    comment    设置为家
    click a point    400    1000    200
    sleep    2

历史搜索添加2
    comment    打开我的用户
    click element    xpath=//android.widget.ImageView[@content-desc="用户"]
    sleep    2
    comment    选择查看收藏夹
    click element    xpath=/hierarchy/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.widget.FrameLayout/android.widget.FrameLayout/android.widget.FrameLayout/android.widget.FrameLayout[4]/android.view.ViewGroup/android.widget.LinearLayout/android.widget.LinearLayout[2]/android.widget.TextView
    sleep    3
    comment    选择家
    click element    xpath=/hierarchy/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.widget.FrameLayout/android.widget.FrameLayout/android.widget.FrameLayout/android.widget.FrameLayout[4]/android.view.ViewGroup/android.widget.ListView/android.view.ViewGroup[1]/android.view.ViewGroup[1]/android.view.ViewGroup[1]
    sleep    3
    comment    历史搜索第一条添加
    click element    xpath=(//android.widget.ImageView[@content-desc="添加"])[1]
    sleep    2
    comment    返回用户管理界面
    click a point    61    111    200
    sleep    2

公司（常用充电站）
    comment    打开我的用户
    click element    xpath=//android.widget.ImageView[@content-desc="用户"]
    sleep    2
    comment    选择查看收藏夹
    click element    xpath=/hierarchy/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.widget.FrameLayout/android.widget.FrameLayout/android.widget.FrameLayout/android.widget.FrameLayout[4]/android.view.ViewGroup/android.widget.LinearLayout/android.widget.LinearLayout[2]/android.widget.TextView
    comment    选择常用充电（公司）
    click element    xpath=/hierarchy/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.widget.FrameLayout/android.widget.FrameLayout/android.widget.FrameLayout/android.widget.FrameLayout[4]/android.view.ViewGroup/android.widget.ListView/android.view.ViewGroup[1]/android.view.ViewGroup[1]/android.view.ViewGroup[2]
    sleep    3
    comment    选择第一个充电站地址进入详细页
    click element    xpath=/hierarchy/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.widget.FrameLayout/android.widget.FrameLayout/android.widget.FrameLayout/android.widget.FrameLayout[4]/android.view.ViewGroup/android.widget.ListView/android.view.ViewGroup[1]/android.view.ViewGroup[2]/android.view.ViewGroup[2]
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
