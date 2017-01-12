*** Settings ***
Resource          A功能关键字.robot
Resource          T工作台页面关键字.robot

*** Variables ***
${codeEle1}       /html/body/div[1]/div/div[2]/div/div[2]/div[2]/div[2]/table/tbody/tr[1]/td[3]/div    # 第一行报关单自编号
${codeEle2}       /html/body/div[1]/div/div[2]/div/div[2]/div[2]/div[2]/table/tbody/tr[2]/td[3]/div    # 报关单列表第二行自编号
${kf_code}        \    # 客服新增报关单自编号
${kf1_code}       \    # 客服1新增报关单的自编号

*** Test Cases ***
lb_kf登录
    登录流程验证    报关企业    lb_kf

kf新增报关单
    报关单新增验证
    ${kf_code}    Get Text    Xpath=${codeEle1}
    Set Suite Variable    ${kf_code}
    Close All Browsers

lb_kf1登录
    登录流程验证    报关企业    lb_kf1

kf1新增报关单
    报关单新增验证
    ${kf1_code}    Get Text    Xpath=${codeEle1}
    Set Suite Variable    ${kf1_code}

权限操作验证
    Click Element    Xpath=${codeEle2}
    ${edit}    页面操作栏    修改
    Click Element    ${edit}
    Page Should Contain    当前用户无权限操作！
    Select Frame    Xpath=//iframe[@src="/admin/declaration/list"]
    Wait Until Element Is Visible    Xpath=/html/body/div[21]
    Click Element    Xpath=/html/body/div[21]/div[2]/div[3]/a
    Click Element    Xpath=${codeEle1}
    Click Element    ${edit}
    Page Should Not Contain    当前用户无权限操作！
    Unselect Frame

提交单据给分单
     点击我的工作台
    Click Element    Xpath=//a[@rel='/admin/myDesk/index']
    Select Frame    Xpath=//iframe[@src='/admin/myDesk/index']
    Click Element    Xpath=/html/body/div[1]/div/div/div/div[1]/div[1]/span/span
    Click Element     Xpath=//*[@id="_easyui_combobox_i1_2"]
    Input Text    Xpath=//*[@id="f_val"]    ${kf1_code}
    ${e}    页面操作栏    搜索
    Click Element     ${e}
