*** Settings ***
Library  SeleniumLibrary

*** Keywords ***
Search Option
    input text  id:twotabsearchtextbox  samsung A51
    click element  nav-search-submit-button

Selecting Item
    click element  xpath://span[text()='Samsung Galaxy A51 (Blue, 8GB RAM, 128GB Storage) Without Offer']

Switching New Tab
    select window  title=Samsung Galaxy A51 (Blue, 8GB RAM, 128GB Storage) Without Offer: Amazon.in: Electronics
Switch old tab
    select window  title=Amazon.in : samsung A51
Add Cart
    click element  id:add-to-cart-button
    sleep  2s

close cart
    click element  id:attach-close_sideSheet-link
   # close browser
   close window

