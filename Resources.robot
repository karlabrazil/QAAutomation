*** Settings ***
Documentation   This is a resource file for commonly used actions
Library  SeleniumLibrary

*** Variables ***
${Browser}  Chrome
${URL}  http://139.99.96.214:3000
${YourBasket}  xpath://html/body/app-root/div/mat-sidenav-container/mat-sidenav-content/app-navbar/mat-toolbar/mat-toolbar-row/button[4]
${Item}  xpath://html/body/app-root/div/mat-sidenav-container/mat-sidenav-content/app-search-result/div/div/div[2]/mat-grid-list/div/mat-grid-tile[5]/figure/mat-card/div[2]/button
${Email}  test@test.com
${Password}  abcd1234
${Dismiss}  xpath://*[@id="mat-dialog-0"]/app-welcome-banner/div/div[2]/button[2]
${Checkout}  xpath://html/body/app-root/div/mat-sidenav-container/mat-sidenav-content/app-basket/mat-card/app-purchase-basket/mat-table/mat-row/mat-cell[1]/img
${Address}  xpath://*[@id="mat-radio-40"]
${DeliveryDetails}  xpath://*[@id="mat-radio-43"]
${PaymentDetails}  xpath://*[@id="mat-radio-45"]

*** Keywords ***
Start Browser and Maximize
    [Arguments]   ${URL}  ${Browser}
    Open Browser  ${URL}  ${Browser}
    Maximize Browser Window
    Capture Page Screenshot  JuiceShopHomepage.png
Dismiss Welcome Banner
   [Arguments]   ${Dismiss}
   Click Button  ${Dismiss}
Login as a Valid User
   [Arguments]   ${Email}  ${Password}
  Click Button  xpath://*[@id="navbarAccount"]
  Click Button  xpath://*[@id="navbarLoginButton"]
  Input Text  xpath://input[@id="email"]  ${Email}
  Input Text  xpath://input[@id="password"]  ${Password}
  Capture Page Screenshot  Loginpage.png
  Click Button  xpath://*[@id="loginButton"]
Select Item
  [Arguments]   ${Item}
  Sleep  3s
  Wait Until Element is Visible  ${Item}
  Sleep  3s
  Click Button  ${Item}
  Capture Page Screenshot  LoggedInUser.png
  Sleep  3s
  Click Button  ${YourBasket}
Checkout Item
  [Arguments]   ${Checkout}
  Wait Until Element is Visible  ${Checkout}
  Capture Page Screenshot  Checkout.png
  Click Button  xpath://*[@id="checkoutButton"]
Select Address
  [Arguments]   ${Address}
  Wait Until Element is Visible  ${Address}
  sleep  2s
  Click Element  ${Address}
  Capture Page Screenshot  SelectAddress.png
  Click Button  xpath://*[@id="card"]/app-address/mat-card/button
Select Delivery Details
  [Arguments]   ${DeliveryDetails}
  Wait Until Element is Visible  ${DeliveryDetails}
  Click Element  ${DeliveryDetails}
  Capture Page Screenshot  SelectDeliveryDetails.png
  Click Button  xpath://html/body/app-root/div/mat-sidenav-container/mat-sidenav-content/app-delivery-method/mat-card/div[4]/button[2]
Select Payment Details
  [Arguments]   ${PaymentDetails}
  Wait Until Element is Visible  ${PaymentDetails}
  Click Element  ${PaymentDetails}
  Capture Page Screenshot  SelectPaymentDetails.png
  sleep  2s
  Click Button  xpath://html/body/app-root/div/mat-sidenav-container/mat-sidenav-content/app-payment/mat-card/div/div[1]/div/div[3]/button
  sleep  2s
  Click Button  xpath://*[@id="checkoutButton"]
Verify if Item is Correct
  Element Text Should Be  xpath://html/body/app-root/div/mat-sidenav-container/mat-sidenav-content/app-order-completion/mat-card/div[2]/mat-table/mat-row/mat-cell[1]  Eggfruit Juice (500ml)
Verify if Price is Correct
  Element Text Should Be  xpath://html/body/app-root/div/mat-sidenav-container/mat-sidenav-content/app-order-completion/mat-card/div[2]/mat-table/mat-footer-row/mat-footer-cell[4]/table/tr[4]/td  8.99¤
Verify if Phone Number is Correct
  Element Should Contain  xpath://html/body/app-root/div/mat-sidenav-container/mat-sidenav-content/app-order-completion/mat-card/div[1]/div/mat-card[2]/div/div[5]  123456789
Verify if Delivery Details is Correct
  Element Text Should Be  xpath://html/body/app-root/div/mat-sidenav-container/mat-sidenav-content/app-order-completion/mat-card/div[1]/div/mat-card[2]/div/div[2]  test
  Element Text Should Be  xpath://html/body/app-root/div/mat-sidenav-container/mat-sidenav-content/app-order-completion/mat-card/div[1]/div/mat-card[2]/div/div[3]  test test, test, test, 1234
  Element Text Should Be  xpath://html/body/app-root/div/mat-sidenav-container/mat-sidenav-content/app-order-completion/mat-card/div[1]/div/mat-card[2]/div/div[4]  test