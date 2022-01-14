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

问题反馈1
    comment    打开我的用户
    click element    xpath=//android.widget.ImageView[@content-desc="用户"]
    sleep    2
    comment    打开设置
    click a point    1843    103    200
    sleep    2
    comment    选择其他
    click element    xpath=//android.view.ViewGroup[@content-desc="其他"]
    sleep    2
    comment    选择问题反馈
    click element    xpath=//android.view.ViewGroup[@content-desc="问题反馈"]
    sleep    2
    comment    问题反馈选择定位不准
    click element    xpath=/hierarchy/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.widget.FrameLayout/android.widget.FrameLayout/android.widget.FrameLayout/android.widget.FrameLayout[4]/android.view.ViewGroup/android.view.ViewGroup/android.view.ViewGroup[1]/android.view.ViewGroup/android.widget.LinearLayout/androidx.recyclerview.widget.RecyclerView/android.view.ViewGroup[1]
    sleep    2
    comment    问题反馈选择搜不到目的地
    click element    xpath=/hierarchy/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.widget.FrameLayout/android.widget.FrameLayout/android.widget.FrameLayout/android.widget.FrameLayout[4]/android.view.ViewGroup/android.view.ViewGroup/android.view.ViewGroup[1]/android.view.ViewGroup/android.widget.LinearLayout/androidx.recyclerview.widget.RecyclerView/android.view.ViewGroup[3]
    sleep    2
    comment    更多选项
    click element    xpath=/hierarchy/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.widget.FrameLayout/android.widget.FrameLayout/android.widget.FrameLayout/android.widget.FrameLayout[4]/android.view.ViewGroup/android.view.ViewGroup/android.view.ViewGroup[1]/android.view.ViewGroup/android.widget.LinearLayout/androidx.recyclerview.widget.RecyclerView/android.view.ViewGroup[8]
    sleep    2
    comment    程序选择显示异常
    click element    xpath=/hierarchy/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.widget.FrameLayout/android.widget.FrameLayout/android.widget.FrameLayout/android.widget.FrameLayout[4]/android.view.ViewGroup/android.view.ViewGroup/android.view.ViewGroup[1]/android.view.ViewGroup/androidx.recyclerview.widget.RecyclerView/android.view.ViewGroup[2]
    sleep    3
    comment    更多选项导航
    click element    xpath=/hierarchy/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.widget.FrameLayout/android.widget.FrameLayout/android.widget.FrameLayout/android.widget.FrameLayout[4]/android.view.ViewGroup/android.view.ViewGroup/android.view.ViewGroup[1]/android.view.ViewGroup/android.widget.LinearLayout/android.view.ViewGroup/android.view.ViewGroup[2]/android.widget.TextView[1]
    sleep    2
    comment    导航选择路线不符合预期
    click element    xpath=/hierarchy/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.widget.FrameLayout/android.widget.FrameLayout/android.widget.FrameLayout/android.widget.FrameLayout[4]/android.view.ViewGroup/android.view.ViewGroup/android.view.ViewGroup[1]/android.view.ViewGroup/androidx.recyclerview.widget.RecyclerView/android.view.ViewGroup[3]
    sleep    2
    comment    更多选项播报
    click element    xpath=/hierarchy/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.widget.FrameLayout/android.widget.FrameLayout/android.widget.FrameLayout/android.widget.FrameLayout[4]/android.view.ViewGroup/android.view.ViewGroup/android.view.ViewGroup[1]/android.view.ViewGroup/android.widget.LinearLayout/android.view.ViewGroup/android.view.ViewGroup[3]/android.widget.TextView[1]
    sleep    2
    comment    播报选择播报内容错误
    click element    xpath=/hierarchy/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.widget.FrameLayout/android.widget.FrameLayout/android.widget.FrameLayout/android.widget.FrameLayout[4]/android.view.ViewGroup/android.view.ViewGroup/android.view.ViewGroup[1]/android.view.ViewGroup/androidx.recyclerview.widget.RecyclerView/android.view.ViewGroup[2]
    sleep    2
    comment    更多选项推荐
    click element    xpath=/hierarchy/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.widget.FrameLayout/android.widget.FrameLayout/android.widget.FrameLayout/android.widget.FrameLayout[4]/android.view.ViewGroup/android.view.ViewGroup/android.view.ViewGroup[1]/android.view.ViewGroup/android.widget.LinearLayout/android.view.ViewGroup/android.view.ViewGroup[4]/android.widget.TextView[1]
    sleep    2
    comment    推荐选项推荐无法关闭
    click element    xpath=/hierarchy/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.widget.FrameLayout/android.widget.FrameLayout/android.widget.FrameLayout/android.widget.FrameLayout[4]/android.view.ViewGroup/android.view.ViewGroup/android.view.ViewGroup[1]/android.view.ViewGroup/androidx.recyclerview.widget.RecyclerView/android.view.ViewGroup[3]
    sleep    2
    comment    提交反馈意见
    click element    xpath=/hierarchy/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.widget.FrameLayout/android.widget.FrameLayout/android.widget.FrameLayout/android.widget.FrameLayout[4]/android.view.ViewGroup/android.view.ViewGroup/android.view.ViewGroup[1]/android.view.ViewGroup/androidx.recyclerview.widget.RecyclerView/android.view.ViewGroup[3]
    sleep    4
    comment    显示提交成功点击完成
    click a point    956    710    200
    sleep    3
    comment    返回百度地图卓越版本界面
    click a point    61    111    200
    sleep    3
    comment    返回用户设置界面
    click a point    61    111    200
    sleep    3
    comment    返回用户管理界面
    click a point    65    104    200
    sleep    2
    comment    返回地图界面
    click a point    65    104    200
    sleep    2

问题反馈2
    comment    打开我的用户
    click element    xpath=//android.widget.ImageView[@content-desc="用户"]
    sleep    2
    comment    打开设置
    click a point    1843    103    200
    sleep    2
    comment    选择其他
    click element    xpath=//android.view.ViewGroup[@content-desc="其他"]
    sleep    2
    comment    选择问题反馈
    click element    xpath=//android.view.ViewGroup[@content-desc="问题反馈"]
    sleep    2
    comment    点击问题输入框
    click element    xpath=//android.view.ViewGroup[@content-desc="问题输入"]/android.widget.TextView[1]
    sleep    2
    input text    id=com.ecarx.adnavi:id/module_setting_input_feedback_content    导航精准，快捷方便
    sleep    3
    comment    点击保存按钮
    click element    xpath=//android.view.ViewGroup[@content-desc="保存"]/android.widget.TextView
    sleep    2
    comment    显示提交成功点击完成
    click a point    956    710    200
    sleep    3
    comment    返回百度地图卓越版本界面
    click a point    61    111    200
    sleep    3
    comment    返回用户设置界面
    click a point    61    111    200
    sleep    3
    comment    返回用户管理界面
    click a point    65    104    200
    sleep    2
    comment    返回地图界面
    click a point    65    104    200
    sleep    2

恢复默认
    comment    打开我的用户
    click element    xpath=//android.widget.ImageView[@content-desc="用户"]
    sleep    2
    comment    打开设置
    click a point    1843    103    200
    sleep    2
    comment    选择其他
    click element    xpath=//android.view.ViewGroup[@content-desc="其他"]
    sleep    2
    comment    点击清除缓存
    click element    xpath=//android.view.ViewGroup[@content-desc="清除缓存"]
    sleep    2
    comment    确定清除缓存吗选择取消
    click a point    799    684    200
    sleep    3
    comment    点击恢复默认
    click element    xpath=//android.view.ViewGroup[@content-desc="恢复默认"]
    sleep    2
    comment    确定恢复默认设置吗？恢复
    click a point    1121    687    200
    sleep    3
    comment    返回百度地图卓越版本界面
    click a point    61    111    200
    sleep    3
    comment    返回用户设置界面
    click a point    61    111    200
    sleep    3
    comment    返回用户管理界面
    click a point    65    104    200
    sleep    2
    comment    返回地图界面
    click a point    65    104    200
    sleep    2

服务推荐
    comment    打开我的用户
    click element    xpath=//android.widget.ImageView[@content-desc="用户"]
    sleep    2
    comment    打开设置
    click a point    1843    103    200
    sleep    2
    comment    选择其他
    click element    xpath=//android.view.ViewGroup[@content-desc="其他"]
    sleep    2
    comment    服务推荐—生活服务
    click element    xpath=//android.view.ViewGroup[@content-desc="生活服务"]
    sleep    2
    comment    服务推荐—车主服务
    click element    xpath=//android.view.ViewGroup[@content-desc="车主服务"]
    sleep    2
    comment    服务推荐—出行服务
    click element    xpath=//android.view.ViewGroup[@content-desc="出行服务"]
    sleep    2
    comment    点击关于
    click element    xpath=//android.view.ViewGroup[@content-desc="关于"]
    sleep    3
    comment    点击帮助
    click element    xpath=//android.view.ViewGroup[@content-desc="帮助"]/android.widget.TextView
    sleep    2
    comment    帮助查看图画显示
    click element    xpath=//android.view.ViewGroup[@content-desc="图画显示"]/android.widget.TextView
    sleep    2
    comment    帮助查看路线规划
    click element    xpath=//android.view.ViewGroup[@content-desc="路线规划"]/android.widget.TextView
    sleep    2
    comment    帮助查看搜索功能
    click element    xpath=//android.view.ViewGroup[@content-desc="搜索功能"]/android.widget.TextView
    sleep    2
    comment    帮助查看语音播报
    click element    xpath=//android.view.ViewGroup[@content-desc="语音播报"]/android.widget.TextView
    sleep    2
    comment    帮助查看地图数据
    click element    xpath=//android.view.ViewGroup[@content-desc="地图数据"]/android.widget.TextView
    sleep    2
    comment    返回百度地图卓越版本界面
    click a point    61    111    200
    sleep    3
    comment    返回用户设置界面
    click a point    61    111    200
    sleep    3
    comment    返回用户管理界面
    click a point    65    104    200
    sleep    2
    comment    返回地图界面
    click a point    65    104    200
    sleep    2
