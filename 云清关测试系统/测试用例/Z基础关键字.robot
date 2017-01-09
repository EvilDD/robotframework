*** Settings ***
Library           Selenium2Library
Resource          X封装按钮关键字.robot

*** Keywords ***
打开浏览器网址
    [Arguments]    ${browser}
    Open Browser    http://zyd.cds.com    ${browser}
    Maximize Browser Window

选择登录角色
    [Arguments]    ${role}
    Click Element    Xpath=//input[@id='']
    Wait Until Element Is Visible    partial link=${role}    3    角色不可点击
    Click Element    partial link=${role}

输入帐号
    [Arguments]    ${username}
    Input Text    id=username    ${username}

输入密码
    [Arguments]    ${password}
    Input Password    id=un    ${password}

验证码登陆
    Input Text    name=captcha    zyd
    Click Element    Xpath=//a[@class='btn-login']

验证登录成功
    [Arguments]    ${username}
    Page Should Contain    您好：${username}

点击客户管理
    ${element}    导航菜单列表    客户管理
    Click Element    ${element}

点击我的账户
    ${element}    导航菜单列表    我的帐户
    Click Element    ${element}

点击主报关单
    ${element}    导航菜单列表    报关单
    Click Element    ${element}

点击报关单
    Wait Until Element Is Visible    xpath=//a[@rel="/admin/declaration/list"]    3    获取报关单二级菜单超时
    Click Element    xpath=//a[@rel="/admin/declaration/list"]

点击模板管理
    ${element}    导航菜单列表    模板管理
    Click Element    ${element}

点击我的工作台
    ${element}    导航菜单列表    我的工作台
    Click Element    ${element}
