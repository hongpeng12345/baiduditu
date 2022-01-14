*** Settings ***
Library           AppiumLibrary

*** Test Cases ***
百度地图初始页面
    Open Application    http://localhost:4723/wd/hub    platformName=Android    platformVersion=9.0.0    deviceName=ef1e_for_arm64    appPackage=com.ecarx.adnavi    appActivity=.view.MainActivity    noReset=true
    sleep    5
    comment    点击开始进入
    click element    xpath=//android.view.ViewGroup[@content-desc="开始"]/android.widget.TextView
    sleep    3

2D正北向上
    comment    选择您喜欢那种地图视角为：2D正北向上
    click element    xpath=//android.view.ViewGroup[@content-desc="2D正北向上"]/android.widget.ImageView
    sleep    2
    comment    选择您的家庭地址：当前位置
    click element    xpath=//android.view.ViewGroup[@content-desc="当前位置"]/android.widget.ImageView[1]
    sleep    2
    comment    选择您的公司地址：当前位置
    click element    xpath=//android.view.ViewGroup[@content-desc="当前位置"]/android.widget.ImageView[1]
    sleep    2
    comment    选择您喜欢的内容：美食地图
    click element    xpath=//android.view.ViewGroup[@content-desc="美食地图"]/android.view.ViewGroup[1]/android.widget.ImageView
    sleep    2
    comment    完成选择
    click element    xpath=//android.widget.TextView[@content-desc="完成"]
    sleep    2

2D正北向上—选择家庭地址
    comment    选择您喜欢那种地图视角为：2D正北向上
    click element    xpath=//android.view.ViewGroup[@content-desc="2D正北向上"]/android.widget.ImageView
    sleep    2
    comment    选择您的家庭地址：搜索
    click element    xpath=//android.view.ViewGroup[@content-desc="搜索地址"]/android.widget.ImageView
    sleep    2
    comment    请输入家地址
    click element    xpath=//android.view.ViewGroup[@content-desc="当前位置"]/android.widget.ImageView[1]
    sleep    2

2D正北向上—选择任意喜欢内容两项
    comment    选择您喜欢那种地图视角为：2D正北向上
    click element    xpath=//android.view.ViewGroup[@content-desc="2D正北向上"]/android.widget.ImageView
    sleep    2
    comment    选择您的家庭地址：当前位置
    click element    xpath=//android.view.ViewGroup[@content-desc="当前位置"]/android.widget.ImageView[1]
    sleep    2
    comment    选择您的公司地址：当前位置
    click element    xpath=//android.view.ViewGroup[@content-desc="当前位置"]/android.widget.ImageView[1]
    sleep    2
    comment    选择您喜欢的内容：自驾旅路线
    click element    xpath=//android.view.ViewGroup[@content-desc="自驾游路线"]/android.view.ViewGroup[1]/android.widget.ImageView
    sleep    2
    comment    选择您喜欢的内容：车主生活
    click element    xpath=//android.view.ViewGroup[@content-desc="车主生活"]/android.view.ViewGroup[1]/android.widget.ImageView
    sleep    2
    comment    完成选择
    click element    xpath=//android.widget.TextView[@content-desc="完成"]
    sleep    2

2D正北向上—选择喜欢内容全选
    comment    选择您喜欢那种地图视角为：2D正北向上
    click element    xpath=//android.view.ViewGroup[@content-desc="2D正北向上"]/android.widget.ImageView
    sleep    2
    comment    选择您的家庭地址：当前位置
    click element    xpath=//android.view.ViewGroup[@content-desc="当前位置"]/android.widget.ImageView[1]
    sleep    2
    comment    选择您的公司地址：当前位置
    click element    xpath=//android.view.ViewGroup[@content-desc="当前位置"]/android.widget.ImageView[1]
    sleep    2
    comment    选择您喜欢的内容：美食地图
    click element    xpath=//android.view.ViewGroup[@content-desc="美食地图"]/android.view.ViewGroup[1]/android.widget.ImageView
    sleep    2
    comment    选择您喜欢的内容：自驾旅路线
    click element    xpath=//android.view.ViewGroup[@content-desc="自驾游路线"]/android.view.ViewGroup[1]/android.widget.ImageView
    sleep    2
    comment    选择您喜欢的内容：演出玩乐
    click element    xpath=//android.view.ViewGroup[@content-desc="演出玩乐"]/android.view.ViewGroup[1]/android.widget.ImageView
    sleep    2
    comment    选择您喜欢的内容：车主生活
    click element    xpath=//android.view.ViewGroup[@content-desc="车主生活"]/android.view.ViewGroup[1]/android.widget.ImageView
    sleep    2
    comment    完成选择
    click element    xpath=//android.widget.TextView[@content-desc="完成"]
    sleep    2

3D车头向上
    comment    选择您喜欢那种地图视角为：3D正北向上
    click element    xpath=//android.view.ViewGroup[@content-desc="3D车头向上"]/android.widget.ImageView
    sleep    2
    comment    选择您的家庭地址：当前位置
    click element    xpath=//android.view.ViewGroup[@content-desc="当前位置"]/android.widget.ImageView[1]
    sleep    2
    comment    选择您的公司地址：当前位置
    click element    xpath=//android.view.ViewGroup[@content-desc="当前位置"]/android.widget.ImageView[1]
    sleep    2
    comment    选择您喜欢的内容：美食地图
    click element    xpath=//android.view.ViewGroup[@content-desc="美食地图"]/android.view.ViewGroup[1]/android.widget.ImageView
    sleep    2
    comment    完成选择
    click element    xpath=//android.widget.TextView[@content-desc="完成"]
    sleep    2

3D车头向上—选择家庭地址
    comment    选择您喜欢那种地图视角为：2D正北向上
    click element    xpath=//android.view.ViewGroup[@content-desc="2D正北向上"]/android.widget.ImageView
    sleep    2
    comment    选择您的家庭地址：//android.view.ViewGroup[@content-desc="搜索地址"]/android.widget.ImageView
    click element    xpath=//android.view.ViewGroup[@content-desc="当前位置"]/android.widget.ImageView[1]
    sleep    2
    comment    请输入家地址

3D正北向上—选择任意喜欢内容两项
    comment    选择您喜欢那种地图视角为：3D正北向上
    click element    xpath=//android.view.ViewGroup[@content-desc="3D车头向上"]/android.widget.ImageView
    sleep    2
    comment    选择您的家庭地址：当前位置
    click element    xpath=//android.view.ViewGroup[@content-desc="当前位置"]/android.widget.ImageView[1]
    sleep    2
    comment    选择您的公司地址：当前位置
    click element    xpath=//android.view.ViewGroup[@content-desc="当前位置"]/android.widget.ImageView[1]
    sleep    2
    comment    选择您喜欢的内容：美食地图
    click element    xpath=//android.view.ViewGroup[@content-desc="美食地图"]/android.view.ViewGroup[1]/android.widget.ImageView
    sleep    2
    comment    选择您喜欢的内容：演出玩乐
    click element    xpath=//android.view.ViewGroup[@content-desc="演出玩乐"]/android.view.ViewGroup[1]/android.widget.ImageView
    sleep    2
    comment    完成选择
    click element    xpath=//android.widget.TextView[@content-desc="完成"]
    sleep    2

3D正北向上—选择喜欢内容全选
    comment    选择您喜欢那种地图视角为：3D正北向上
    click element    xpath=//android.view.ViewGroup[@content-desc="3D车头向上"]/android.widget.ImageView
    sleep    2
    comment    选择您的家庭地址：当前位置
    click element    xpath=//android.view.ViewGroup[@content-desc="当前位置"]/android.widget.ImageView[1]
    sleep    2
    comment    选择您的公司地址：当前位置
    click element    xpath=//android.view.ViewGroup[@content-desc="当前位置"]/android.widget.ImageView[1]
    sleep    2
    comment    选择您喜欢的内容：美食地图
    click element    xpath=//android.view.ViewGroup[@content-desc="美食地图"]/android.view.ViewGroup[1]/android.widget.ImageView
    sleep    2
    comment    选择您喜欢的内容：自驾旅路线
    click element    xpath=//android.view.ViewGroup[@content-desc="自驾游路线"]/android.view.ViewGroup[1]/android.widget.ImageView
    sleep    2
    comment    选择您喜欢的内容：演出玩乐
    click element    xpath=//android.view.ViewGroup[@content-desc="演出玩乐"]/android.view.ViewGroup[1]/android.widget.ImageView
    sleep    2
    comment    选择您喜欢的内容：车主生活
    click element    xpath=//android.view.ViewGroup[@content-desc="车主生活"]/android.view.ViewGroup[1]/android.widget.ImageView
    sleep    2
    comment    完成选择
    click element    xpath=//android.widget.TextView[@content-desc="完成"]
    sleep    2
