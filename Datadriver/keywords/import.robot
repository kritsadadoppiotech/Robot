*** Settings ***
Library		SeleniumLibrary

Variables   ${CURDIR}/../resources/setting/${env}/setting.yaml
Resource    ${CURDIR}/../keywords/common/common.robot

Resource    ${CURDIR}/./pages/home_page.robot
Resource    ${CURDIR}/./pages/login_page.robot

Resource    ${CURDIR}/./locators/home_locator.robot
Resource    ${CURDIR}/./locators/login_locator.robot
