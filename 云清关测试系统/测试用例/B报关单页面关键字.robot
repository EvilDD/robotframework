*** Settings ***
Resource          Z基础关键字.robot
Library           Collections

*** Keywords ***
进入报关单页面
    点击主报关单
    点击报关单
    Select Frame    Xpath=//iframe[@src="/admin/declaration/list"]

点击新增报关单
    ${element}    页面操作栏    新增
    Click Element    ${element}
    Unselect Frame
    Select Frame    xpath=//iframe[@src="/admin/declaration/add"]

页面元素
    [Arguments]    ${textName}
    Wait Until Element Is Visible    Xpath=/html/body/div[1]/div/div[1]/div/div/div/div[1]/form[1]/table/tbody/tr[1]/td[2]/span/input[1]    5    等待客户编码输入框可见失败
    ${textDic}    Create Dictionary
    ${e}    Get Webelement    Xpath=/html/body/div[1]/div/div[1]/div/div/div/div[1]/form[1]/table/tbody/tr[1]/td[2]/span/input[1]
    Set To Dictionary    ${textDic}    客户编码=${e}
    ${e}    Get Webelement    Xpath=/html/body/div[1]/div/div[1]/div/div/div/div[1]/form[1]/table/tbody/tr[1]/td[4]/span/input[1]
    Set To Dictionary    ${textDic}    申报地海关=${e}
    ${e}    Get Webelement    id=import
    Set To Dictionary    ${textDic}    进口=${e}
    ${e}    Get Webelement    id=export
    Set To Dictionary    ${textDic}    出口=${e}
    ${e}    Get Webelement    Xpath=/html/body/div[1]/div/div[1]/div/div/div/div[1]/form[1]/table/tbody/tr[1]/td[8]/span/input[1]
    Set To Dictionary    ${textDic}    进出口岸=${e}
    ${e}    Get Webelement    Xpath=//*[@id="record_no"]
    Set To Dictionary    ${textDic}    备案号=${e}
    ${e}    Get Webelement    Xpath=//*[@id="agreement_no"]
    Set To Dictionary    ${textDic}    合同协议号=${e}
    ${e}    Get Webelement    xpath=/html/body/div[1]/div/div[1]/div/div/div/div[1]/form[1]/table/tbody/tr[2]/td[6]/span/input[1]
    Set To Dictionary    ${textDic}    进出口日期=${e}
    ${e}    Get Webelement    Xpath=/html/body/div[1]/div/div[1]/div/div/div/div[1]/form[1]/table/tbody/tr[3]/td[2]/a/span/input
    Set To Dictionary    ${textDic}    收发货人=${e}
    ${e}    Get Webelement    Xpath=//*[@id="receiver_scc"]
    Set To Dictionary    ${textDic}    统一社会信用编码=${e}
    ${e}    Get Webelement    Xpath=//*[@id="receiver_name"]
    Set To Dictionary    ${textDic}    收发货人名称=${e}
    ${e}    Get Webelement    xpath=/html/body/div[1]/div/div[1]/div/div/div/div[1]/form[1]/table/tbody/tr[4]/td[2]/a/span/input[1]
    Set To Dictionary    ${textDic}    消费使用单位=${e}
    ${e}    Get Webelement    Xpath=//*[@id="enter_scc"]
    Set To Dictionary    ${textDic}    统一编码=${e}
    ${e}    Get Webelement    Xpath=//*[@id="enter_name"]
    Set To Dictionary    ${textDic}    单位名称=${e}
    ${e}    Get Webelement    xpath=/html/body/div[1]/div/div[1]/div/div/div/div[1]/form[1]/table/tbody/tr[6]/td[2]/a/span/input[1]
    Set To Dictionary    ${textDic}    运输方式=${e}
    ${e}    Get Webelement    Xpath=//*[@id="trans_name"]
    Set To Dictionary    ${textDic}    运输工具名称=${e}
    ${e}    Get Webelement    Xpath=//*[@id="trans_no"]
    Set To Dictionary    ${textDic}    航次号=${e}
    ${e}    Get Webelement    Xpath=//*[@id="bill_no"]
    Set To Dictionary    ${textDic}    提运单号=${e}
    ${e}    Get Webelement    xpath=/html/body/div[1]/div/div[1]/div/div/div/div[1]/form[1]/table/tbody/tr[7]/td[4]/a/span/input[1]
    Set To Dictionary    ${textDic}    监管方式=${e}
    ${e}    Get Webelement    Xpath=/html/body/div[1]/div/div[1]/div/div/div/div[1]/form[1]/table/tbody/tr[7]/td[6]/span/input[1]
    Set To Dictionary    ${textDic}    征免性质=${e}
    ${e}    Get Webelement    Xpath=//*[@id="tax_company"]
    Set To Dictionary    ${textDic}    纳税单位=${e}
    ${e}    Get Webelement    xpath=//*[@id="license_no"]
    Set To Dictionary    ${textDic}    许可证号=${e}
    ${e}    Get Webelement    Xpath=/html/body/div[1]/div/div[1]/div/div/div/div[1]/form[1]/table/tbody/tr[8]/td[6]/a/span/input[1]
    Set To Dictionary    ${textDic}    启运国=${e}
    ${e}    Get Webelement    Xpath=/html/body/div[1]/div/div[1]/div/div/div/div[1]/form[1]/table/tbody/tr[9]/td[2]/a/span/input[1]
    Set To Dictionary    ${textDic}    装货港=${e}
    ${e}    Get Webelement    Xpath=/html/body/div[1]/div/div[1]/div/div/div/div[1]/form[1]/table/tbody/tr[9]/td[4]/a/span/input[1]
    Set To Dictionary    ${textDic}    境内目的地=${e}
    ${e}    Get Webelement    xpath=/html/body/div[1]/div/div[1]/div/div/div/div[1]/form[1]/table/tbody/tr[9]/td[6]/a/span/input[1]
    Set To Dictionary    ${textDic}    成交方式=${e}
    ${e}    Get Webelement    Xpath=/html/body/div[1]/div/div[1]/div/div/div/div[1]/form[1]/table/tbody/tr[10]/td[2]/a/span/input[1]
    Set To Dictionary    ${textDic}    运费标志=${e}
    ${e}    Get Webelement    Xpath=//*[@id="freight"]
    Set To Dictionary    ${textDic}    运费=${e}
    ${e}    Get Webelement    Xpath=/html/body/div[1]/div/div[1]/div/div/div/div[1]/form[1]/table/tbody/tr[10]/td[4]/a/span/input[1]
    Set To Dictionary    ${textDic}    运费单位=${e}
    ${e}    Get Webelement    xpath=/html/body/div[1]/div/div[1]/div/div/div/div[1]/form[1]/table/tbody/tr[10]/td[6]/a/span/input[1]
    Set To Dictionary    ${textDic}    保费标志=${e}
    ${e}    Get Webelement    Xpath=//*[@id="premium"]
    Set To Dictionary    ${textDic}    保费=${e}
    ${e}    Get Webelement    Xpath=/html/body/div[1]/div/div[1]/div/div/div/div[1]/form[1]/table/tbody/tr[10]/td[8]/a/span/input[1]
    Set To Dictionary    ${textDic}    保费单位=${e}
    ${e}    Get Webelement    xpath=/html/body/div[1]/div/div[1]/div/div/div/div[1]/form[1]/table/tbody/tr[10]/td[10]/a/span/input[1]
    Set To Dictionary    ${textDic}    杂费标志=${e}
    ${e}    Get Webelement    Xpath=//*[@id="extras"]
    Set To Dictionary    ${textDic}    杂费=${e}
    ${e}    Get Webelement    Xpath=/html/body/div[1]/div/div[1]/div/div/div/div[1]/form[1]/table/tbody/tr[10]/td[12]/a/span/input[1]
    Set To Dictionary    ${textDic}    杂费单位=${e}
    ${e}    Get Webelement    Xpath=//*[@id="num"]
    Set To Dictionary    ${textDic}    件数=${e}
    ${e}    Get Webelement    xpath=/html/body/div[1]/div/div[1]/div/div/div/div[1]/form[1]/table/tbody/tr[11]/td[4]/a/span/input[1]
    Set To Dictionary    ${textDic}    包装种类=${e}
    ${e}    Get Webelement    Xpath=//*[@id="gross_weight"]
    Set To Dictionary    ${textDic}    毛重=${e}
    ${e}    Get Webelement    Xpath=//*[@id="net_weight"]
    Set To Dictionary    ${textDic}    净重=${e}
    ${e}    Get Webelement    xpath=/html/body/div[1]/div/div[1]/div/div/div/div[1]/form[1]/table/tbody/tr[12]/td[2]/a/span/input[1]
    Set To Dictionary    ${textDic}    贸易国=${e}
    ${e}    Get Webelement    Xpath=//*[@id="guarantee_yes"]
    Set To Dictionary    ${textDic}    担保验放是=${e}
    ${e}    Get Webelement    Xpath=//*[@id="guarantee_no"]
    Set To Dictionary    ${textDic}    担保验放否=${e}
    ${e}    Get Webelement    Xpath=/html/body/div[1]/div/div[1]/div/div/div/div[1]/form[1]/table/tbody/tr[13]/td[2]/span/input[1]
    Set To Dictionary    ${textDic}    报关单类型=${e}
    ${e}    Get Webelement    xpath=//*[@id="note"]
    Set To Dictionary    ${textDic}    备注=${e}
    ${e}    Get Webelement    Xpath=//*[@id="hs_code"]
    Set To Dictionary    ${textDic}    商品编号=${e}
    ${e}    Get Webelement    Xpath=//*[@id="deal_num"]
    Set To Dictionary    ${textDic}    成交数量=${e}
    ${e}    Get Webelement    Xpath=/html/body/div[1]/div/div[1]/div/div/div/div[1]/form[2]/table/tbody/tr[3]/td[4]/span/input[1]
    Set To Dictionary    ${textDic}    成交单位=${e}
    ${e}    Get Webelement    Xpath=//*[@id="deal_total"]
    Set To Dictionary    ${textDic}    成交总价=${e}
    ${e}    Get Webelement    xpath=/html/body/div[1]/div/div[1]/div/div/div/div[1]/form[2]/table/tbody/tr[3]/td[10]/a/span/input[1]
    Set To Dictionary    ${textDic}    币制=${e}
    ${e}    Get Webelement    Xpath=//*[@id="first_num"]
    Set To Dictionary    ${textDic}    法定数量=${e}
    ${e}    Get Webelement    Xpath=//*[@id="version"]
    Set To Dictionary    ${textDic}    版本号=${e}
    ${e}    Get Webelement    Xpath=//*[@id="item_no"]
    Set To Dictionary    ${textDic}    货号=${e}
    ${e}    Get Webelement    Xpath=/html/body/div[1]/div/div[1]/div/div/div/div[1]/form[2]/table/tbody/tr[4]/td[10]/a/span/input[1]
    Set To Dictionary    ${textDic}    最终目的国=${e}
    ${e}    Get Webelement    xpath=/html/body/div[1]/div/div[1]/div/div/div/div[1]/form[2]/table/tbody/tr[5]/td[6]/a/span/input[1]
    Set To Dictionary    ${textDic}    原产国=${e}
    ${e}    Get Webelement    Xpath=/html/body/div[1]/div/div[1]/div/div/div/div[1]/form[2]/table/tbody/tr[5]/td[8]/a/span/input[1]
    Set To Dictionary    ${textDic}    征免方式=${e}
    ${e}    Get Webelement    Xpath=//*[@id="addProduct"]
    Set To Dictionary    ${textDic}    保存商品=${e}
    ${e}    Get Webelement    Xpath=//*[@id="submit"]
    Set To Dictionary    ${textDic}    保存报关单=${e}
    ${textEle}    Get From Dictionary    ${textDic}    ${textName}
    [Return]    ${textEle}

添加基础数据
    ${seconds}    Set Variable    ${0.5}
    ${e}    页面元素    客户编码
    Input Text    ${e}    Z1111
    ${e}    页面元素     申报地海关
    Click Element     ${e}
    Input Text    ${e}    5141
    Press Key    ${e}    \\13
    ${e}    页面元素     进口
    Click Element    ${e}
    ${e}    页面元素    进出口岸
    Input Text    ${e}    5100
    Press Key    ${e}    \\13
    ${e}    页面元素     备案号
    Input Text     ${e}    A12345678910
    ${e}    页面元素     合同协议号
    Input Text    ${e}    hetong
    ${e}    页面元素     进出口日期
    Input Text    ${e}    2017-01-01
    sleep    ${seconds}
    Press Key    ${e}    \\13
    ${e}    页面元素     收发货人
    Input Text    ${e}    4401963EPH
    sleep    ${seconds}
    Press Key    ${e}    \\13
    ${e}    页面元素     统一社会信用编码
    Input Text    ${e}    TYSHXYBM9123456789
    Comment    ${e}    页面元素     收发货人名称
    Comment    Input Text     ${e}     广州晖瑞包装材料有限公司
    ${e}    页面元素     消费使用单位
    Input Text    ${e}     4418943145
     sleep    ${seconds}
    Press Key    ${e}    \\13
    ${e}    页面元素     统一编码
    Input Text     ${e}     TYBM56789123456789
    Comment    ${e}    页面元素    单位名称
    Comment    Input Text    ${e}     宏全食品包装（清新）有限公司
    ${e}    页面元素     运输方式
    Input Text    ${e}    5
    Press Key    ${e}    \\13
    ${e}    页面元素     运输工具名称
    Input Text    ${e}    feiji
    ${e}    页面元素     航次号
    Input Text    ${e}    HCH
    ${e}    页面元素     提运单号
    Input Text     ${e}     TYDH
    ${e}    页面元素     监管方式
    Input Text    ${e}     0110
    Press Key    ${e}    \\13
    ${e}    页面元素     征免性质
    Input Text     ${e}     101
    Press Key    ${e}    \\13
    ${e}    页面元素     纳税单位
    Input Text    ${e}    NSDW
    ${e}    页面元素     许可证号
    Input Text    ${e}    XKZH
    ${e}    页面元素    启运国
    Input Text    ${e}     110
    Press Key    ${e}    \\13
    ${e}    页面元素     装货港
    Input Text    ${e}     105
    Press Key    ${e}    \\13
    ${e}    页面元素     境内目的地
    Input Text     ${e}     11053
    Press Key    ${e}    \\13
    ${e}    页面元素     成交方式
    Input Text    ${e}    1
    Press Key    ${e}    \\13
    ${e}    页面元素     件数
    Input Text     ${e}    5
    ${e}    页面元素     包装种类
    Input Text    ${e}    1
    Press Key    ${e}    \\13
    ${e}    页面元素     毛重
    Input Text     ${e}    120
    ${e}    页面元素     净重
    Input Text    ${e}    12
    ${e}    页面元素     贸易国
    Input Text    ${e}     116
    Press Key    ${e}    \\13
    ${e}    页面元素     报关单类型
    Input Text    ${e}    M
    Press Key    ${e}    \\13
    ${e}    页面元素     备注
    Input Text    ${e}     快件
    ${e}    页面元素     商品编号
    Input Text    ${e}    0102290000
    Press Key    ${e}    \\13
     0102290000
    ${e}    页面元素     成交数量
    Input Text    ${e}    5
    ${e}    页面元素     成交单位
    Input Text    ${e}    035
    Press Key    ${e}    \\13
    ${e}    页面元素     成交总价
    Input Text    ${e}    10
    ${e}    页面元素    币制
    Input Text    ${e}     142
    Press Key    ${e}    \\13
    ${e}    页面元素     法定数量
    Input Text    ${e}     11
    ${e}    页面元素    版本号
    Input Text    ${e}     BANBENHAO
    ${e}    页面元素     货号
    Input Text    ${e}     HUOHAO
    ${e}    页面元素     最终目的国
    Input Text    ${e}     142
    Press Key    ${e}    \\13
    ${e}    页面元素     原产国
    Input Text    ${e}    109
    Press Key    ${e}    \\13
    ${e}    页面元素     征免方式
    Input Text    ${e}    3
    ${e}    页面元素     保存商品
    Click Element    ${e}
    ${e}    页面元素     保存报关单
    Click Element     ${e}

0102290000
    Wait Until Element Is Enabled    Xpath=//*[@id="datagrid-row-r7-2-0"]    5    查询不到该商品
    Click Element    xpath=/html/body/div[41]/div[3]/a[1]/span
    Wait Until Element Is Visible    Xpath=//*[@id="text0"]
    Input Text    Xpath=//*[@id="text0"]    品名
    Input Text    Xpath=//*[@id="text1"]    是否改良种用
    Input Text    Xpath=//*[@id="text2"]    其他
    Click Element    Xpath=/html/body/div[46]/div[3]/a[1]/span
