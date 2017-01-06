*** Settings ***
Resource          9-8基础关键字.robot

*** Keywords ***
进入报关单页面
    点击主报关单
    点击报关单
    Select Frame    Xpath=//iframe[@src="/admin/declaration/list"]

点击新增报关单
    sleep    2
    Click Element    xpath=//tr[@id='datagrid-row-r3-2-0']
    ${element}    页面操作栏    打印核对单
    Click Element    ${element}
