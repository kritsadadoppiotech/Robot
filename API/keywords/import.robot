*** Settings ***
Library		RequestsLibrary
Resource    ${CURDIR}/./common/common.robot
Variables   ${CURDIR}/../resources/setting/${env}/setting.yaml
Variables   ${CURDIR}/../resources/testdata/testdata.yaml


Resource    ${CURDIR}/../keywords/pages/login_page.robot


Resource    ${CURDIR}/../keywords/features/login_features.robot
