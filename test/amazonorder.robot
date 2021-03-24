*** Settings ***
Library  SeleniumLibrary
Variables  ./test/amazon.py

*** Keywords ***
Search Option
    input text  ${text1}    samsung A51
    click element  ${subbtn2}

Selecting Item
    click element  ${selectproduct}

Switching New Tab
    select window  ${switchtab1}
Switch old tab
    select window  ${switchtab2}

Add Cart
    click element  ${addtocart}
    sleep  2s

close cart
   click element  ${closecart}
   close window

