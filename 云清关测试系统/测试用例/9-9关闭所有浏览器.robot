*** Settings ***
Library           Selenium2Library

*** Test Cases ***
等待n秒关闭
    sleep    5

关闭所有浏览器
    Close All Browsers
    Import Library    ${CURDIR}/../辅助程序/killDriver.py
