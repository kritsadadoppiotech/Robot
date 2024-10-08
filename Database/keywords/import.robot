*** Settings ***
Library     DatabaseLibrary
Library     JSONLibrary
Resource    ${CURDIR}/./common/common.robot
Variables   ${CURDIR}/../resources/setting/setting.yaml
Variables   ${CURDIR}/../resources/testdata/testdata.yaml

Resource    ${CURDIR}/../keywords/pages/product_page.robot


Resource    ${CURDIR}/../keywords/features/product_features.robot

