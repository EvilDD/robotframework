*** Settings ***
Resource          9-8基础关键字.robot
Resource          1-2报关单页面关键字.robot

*** Keywords ***
登录流程验证
    [Arguments]    ${role}    ${username}
    打开浏览器网址    Chrome
    选择登录角色    ${role}
    输入帐号    ${username}
    输入密码    000000
    验证码登陆
    验证登录成功    ${username}

报关单新增验证
    进入报关单页面
    点击新增报关单
