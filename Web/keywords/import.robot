*** Settings ***
Library		SeleniumLibrary

Variables   ${CURDIR}/../resources/testdata/testdata.yaml
Variables   ${CURDIR}/../resources/setting/${env}/setting.yaml

Resource    ${CURDIR}/common.robot
Resource    ${CURDIR}/./pages/home_page.robot
Resource    ${CURDIR}/./pages/login_page.robot
Resource    ${CURDIR}/./pages/register_page.robot
Resource    ${CURDIR}/./pages/cart_page.robot
Resource    ${CURDIR}/./pages/payment_page.robot

Resource    ${CURDIR}/./features/home_features.robot
Resource    ${CURDIR}/./features/login_features.robot
Resource    ${CURDIR}/./features/register_features.robot
Resource    ${CURDIR}/./features/cart_features.robot
Resource    ${CURDIR}/./features/payment_features.robot

Resource    ${CURDIR}/./locators/home_locator.robot
Resource    ${CURDIR}/./locators/login_locator.robot
Resource    ${CURDIR}/./locators/register_locator.robot
Resource    ${CURDIR}/./locators/cart_locator.robot
Resource    ${CURDIR}/./locators/payment_locator.robot