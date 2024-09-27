*** Settings ***
Library		AppiumLibrary
Library     String
Resource    ${CURDIR}/common/${platform}/common.robot
Variables   ${CURDIR}/../resources/testdata/testdata.yaml
Variables   ${CURDIR}/../resources/setting/${platform}.yaml

Resource    ${CURDIR}/../resources/locators/${platform}/home_locator.robot
Resource    ${CURDIR}/../resources/locators/${platform}/cart_locator.robot

Resource    ${CURDIR}/../keywords/pages/${platform}/home_page.robot
Resource    ${CURDIR}/../keywords/pages/${platform}/cart_page.robot

Resource    ${CURDIR}/../keywords/features/${platform}/home_features.robot
Resource    ${CURDIR}/../keywords/features/${platform}/cart_features.robot