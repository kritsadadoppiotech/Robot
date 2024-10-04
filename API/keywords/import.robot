*** Settings ***
Library		RequestsLibrary
Library     JSONLibrary
Resource    ${CURDIR}/./common/common.robot
Variables   ${CURDIR}/../resources/setting/${env}/setting.yaml
Variables   ${CURDIR}/../resources/testdata/testdata.yaml

Resource    ${CURDIR}/../keywords/pages/login_page.robot
Resource    ${CURDIR}/../keywords/pages/search_page.robot
Resource    ${CURDIR}/../keywords/pages/ordersubmit_page.robot

Resource    ${CURDIR}/../keywords/features/login_features.robot
Resource    ${CURDIR}/../keywords/features/search_features.robot
Resource    ${CURDIR}/../keywords/features/ordersubmit_features.robot
