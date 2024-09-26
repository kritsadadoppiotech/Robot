*** Settings ***
Library		SeleniumLibrary

Variables   ../resources/testdata/testdata.yaml
Variables   ../resources/setting/${env}/setting.yaml

Resource    common.robot
Resource    ./pages/home_page.robot
Resource    ./pages/login_page.robot
Resource    ./pages/register_page.robot
Resource    ./pages/cart_page.robot
Resource    ./pages/payment_page.robot

Resource    ./features/home_features.robot
Resource    ./features/login_features.robot
Resource    ./features/register_features.robot
Resource    ./features/cart_features.robot
Resource    ./features/payment_features.robot

Resource    ./locators/home_locator.robot
Resource    ./locators/login_locator.robot
Resource    ./locators/register_locator.robot
Resource    ./locators/cart_locator.robot
Resource    ./locators/payment_locator.robot