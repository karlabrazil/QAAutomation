*** Settings ***
Documentation    This is a simple automation test using robot framework.
Library  SeleniumLibrary
Resource  ../Resources.robot

*** Variables ***
${Browser}  Chrome
${URL}  http://139.99.96.214:3000
${Email}  test@test.com
${Password}  abcd1234
${Address}  xpath://*[@id="mat-radio-40"]
${DeliveryDetails}  xpath://*[@id="mat-radio-43"]
${Item}  xpath://html/body/app-root/div/mat-sidenav-container/mat-sidenav-content/app-search-result/div/div/div[2]/mat-grid-list/div/mat-grid-tile[5]/figure/mat-card/div[2]/button
${HomepageItem}  xpath:/html/body/app-root/div/mat-sidenav-container/mat-sidenav-content/app-search-result/div/div/div[2]/mat-grid-list/div/mat-grid-tile[1]/figure/mat-card

*** Test Cases ***
TC_Customer Places Order from OWASP Juice Shop
  Start Browser and Maximize  ${URL}  ${Browser}
  Dismiss Welcome Banner  ${Dismiss}
  Set Selenium Implicit Wait  30s
  Wait Until Page Contains Element  ${HomepageItem}
  Capture Page Screenshot  Homepage.png
  Login as a Valid User  ${Email}  ${Password}
  Select Item  ${Item}
  Checkout Item  ${Checkout}
  Select Address  ${Address}
  Select Delivery Details  ${DeliveryDetails}
  Select Payment Details  ${PaymentDetails}
  Verify if Item is Correct
  Verify if Price is Correct
  Verify if Delivery Details is Correct
  Verify if Phone Number is Correct
  Capture Page Screenshot  OrderFulfilled.png

