*** Settings ***
Library           Collections
Library           Selenium2Library

*** Keywords ***
导航菜单列表
    [Arguments]    ${name}
    Wait Until Element Is Enabled    xpath=//div[@id='nav']
    ${menuElements}    Get Webelements    Xpath=//div[@class="panel-title panel-with-icon"]
    ${menuDict}    Create Dictionary
    : FOR    ${menuElement}    IN    @{menuElements}
    \    ${menuName}    Get Text    ${menuElement}
    \    Set To Dictionary    ${menuDict}    ${menuName}=${menuElement}
    ${element}    Get From Dictionary    ${menuDict}    ${name}
    [Return]    ${element}

页面操作栏
    [Arguments]    ${buttonName}
    Wait Until Element Is Enabled    xpath=//div[@class='button']
    ${menuElements}    Get Webelements    Xpath=//span[@class="l-btn-text"]
    ${menuDict}    Create Dictionary
    : FOR    ${menuElement}    IN    @{menuElements}
    \    ${menuName}    Get Text    ${menuElement}
    \    Set To Dictionary    ${menuDict}    ${menuName}=${menuElement}
    ${printElements}    Get WebelementS    Xpath=//select[@id='printcd']/option
    : FOR    ${printElement}    IN    @{printElements}
    \    ${printName}    Get Text    ${printElement}
    \    Set To Dictionary    ${menuDict}    ${printName}=${printElement}
    #Log Dictionary    ${menuDict}
    ${buttonEle}    Get From Dictionary    ${menuDict}    ${buttonName}
    [Return]    ${buttonEle}

页面搜索栏

页面页码栏
