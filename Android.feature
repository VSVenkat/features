Feature: Android features
#all android features

# Registration Service
@regFlowIB @reinstall @register
Scenario: registration flow with no errors IB

    # Get started
  Given I am on the registration start screen
    Then I can see the registration start screen
  When I touch Get Started button
    Then I am taken to the Terms and Conditions screen
  When I touch I Accept button
    Then I am taken to the registration ID screen

    # Customer ID
  When I enter customer ID "123456789030"
    And I touch customer ID Continue button
    Then I am taken to the registration Customer Verification Account Number screen
    When I enter Account ID "123456789030"
      Then I am taken to the registration Customer Verification Last four Digits screen
      And I enter first digit "9"
      And I enter second digit "0"
      And I enter third digit "3"
      And I enter fourth digit "0"
      Then I am taken to the Registration SMS Code screen
      Then I touch SMS code field
      And enter code "11111111"
      Then I am taken to the Create Password screen
      Then I touch Enter Password field
      And enter password "Android1"
      And I touch continue button
      Then I am taken to the Create Password screen
      Then I touch Enter Password field
      And enter password "Android1"
      And I touch re continue button

      #Create Security code
      Then I am taken to the Create Security code screen
      Then I touch Security Code field
      And enter security code "11111111"
      Then I am taken to the Create Security code screen
      Then I touch Security Code field
      And enter security code "11111111"
    # Passcode
    Then I am taken to the Create Code screen
  When I enter first Passcode digit "1"
    And I enter second Passcode digit "1"
    And I enter third Passcode digit "1"
    And I enter fourth Passcode digit "1"
    Then I am taken to Passcode confirmation screen
  When I enter first confirm Passcode digit "1"
    And I enter second confirm Passcode digit "1"
    And I enter third confirm Passcode digit "1"
    And I enter fourth confirm Passcode digit "1"

    # Registration successful
    Then I am taken to the Registration Successful screen
    When I touch Start Metro Bank button
    Then I can see the Accounts screen

@regErrorFlowIB
Scenario: registration flow with errors

# Security Number
When I enter first Security Number "1"
And I enter second Security Number "1"
And I enter third Security Number "1"
Then I am taken to the Internet Banking Password screen

# Internet Banking Password
When I enter Internet Banking Password "password"
And I touch Internet Banking Password Continue button
Then I am taken to the SMS verification screen
When I enter the SMS verification code "11111111"
Then I am taken to the Passcode creation screen

    # Get started
  Given I am on the registration start screen
    Then I can see the registration start screen
  When I touch Get Started button
    Then I am taken to the Terms and Conditions screen
  When I touch I Accept button
    Then I am taken to the registration ID screen

    # Customer ID error attempt
    When I enter customer ID "123456"
      And I touch customer ID Continue button
      Then I am shown Customer ID error message
  When I enter customer ID "123456789030"
    And I touch customer ID Continue button
    Then I am taken to the Security Number screen

    # Security Number error attempt
      When I enter first Security Number "1"
      And I enter second Security Number "1"
      And I enter third Security Number "2"
      Then I am taken to the Internet Banking Password screen
      When I enter Internet Banking Password "password"
        And I touch Internet Banking Password Continue button
        Then I am shown security details error message
    When I enter first Security Number "1"
      And I enter second Security Number "1"
      And I enter third Security Number "1"
      Then I am taken to the Internet Banking Password screen
    When I enter Internet Banking Password "password"
      And I touch Internet Banking Password Continue button
      Then I am taken to the SMS verification screen

    # SMS Code error attempt
        When I enter the SMS verification code "12345678"
          Then I am shown invalid verification code error message
    When I enter the SMS verification code "11111111"
      Then I am taken to the Passcode creation screen

    # Passcode error attempt
      When I enter first Passcode digit "1"
        And I enter second Passcode digit "1"
        And I enter third Passcode digit "1"
        And I enter fourth Passcode digit "1"
        Then I am taken to Passcode confirmation screen
      When I enter first confirm Passcode digit "1"
        And I enter second confirm Passcode digit "1"
        And I enter third confirm Passcode digit "1"
        And I enter fourth confirm Passcode digit "2"
        Then I am shown passcode does not match error message

@regFlowMagicWord
Scenario: registration flow with no errors non IB Magic Word
  Given I am on the registration start screen
    Then I can see the registration start screen
  When I touch Get Started button
    Then I am taken to the Terms and Conditions screen
  When I touch I Accept button
    Then I am taken to the registration ID screen

  # Customer ID
  When I enter customer ID "123456789027"
    And I touch customer ID Continue button
    Then I am taken to the Magic Word screen

  # Magic Word
  When I enter Magic Word "Word"
  And I touch the Magic Word Continue button
  Then I am taken to the SMS verification screen

  # SMS Verification
  When I enter the SMS verification code "11111111"
    Then I am taken to Password creation screen

  # Password creation
    And I create Password "Password1"
    And I touch create Password Continue button
    And I am taken to Password confirmation screen
    And I enter Password confirmation "Password1"
    And I touch Password confirmation Continue button
    Then I am taken to the Security Code creation screen

  # Security Code
  When I create Security Code "11111111"
    Then I am taken to confirm Security Code screen
    And I enter Security Code confirmation "11111111"

  # Registration successful
  Then I am taken to the Registration Successful screen
When I touch Start Metro Bank button
  Then I can see the Accounts screen

@regErrorFlowMagicWord
Scenario: registration flow with errors non IB Magic Word
  Given I am on the registration start screen
    Then I can see the registration start screen
  When I touch Get Started button
    Then I am taken to the Terms and Conditions screen
  When I touch I Accept button
    Then I am taken to the registration ID screen
    When I enter customer ID "123456"
      And I touch customer ID Continue button
      Then I am shown Customer ID error message
      When I enter customer ID "123456789027"
        And I touch customer ID Continue button
        Then I am taken to the Magic Word screen
  When I enter Magic Word "qwerty"
    And I touch the Magic Word Continue button
    Then I am shown Magic Word error message
    When I enter Magic Word "Word"
      And I touch the Magic Word Continue button
      Then I am taken to the SMS verification screen
  When I enter the SMS verification code "12345678"
    Then I am shown invalid verification code error message
    When I enter the SMS verification code "11111111"
      Then I am taken to Password creation screen
      And I create Password "Password1"
      And I touch create Password Continue button
      And I am taken to Password confirmation screen
      And I enter Password confirmation "Password2"
      Then I am shown Password confirmation error screen
      And I create Password "Password1"
      And I touch create Password Continue button
      And I am taken to Password confirmation screen
      And I enter Password confirmation "Password1"
      And I touch Password confirmation Continue button
      Then I am taken to the Security Code creation screen
    When I create Security Code "11111111"
      Then I am taken to confirm Security Code screen
      And I enter Security Code confirmation "11111112"
      Then I am shown Security Code error screen

@regFlowAccNumb @reinstall
Scenario: registration flow with no errors non IB Account Number

    # Get started
  Given I am on the registration start screen
    Then I can see the registration start screen
  When I touch Get Started button
    Then I am taken to the Terms and Conditions screen
  When I touch I Accept button
    Then I am taken to the registration ID screen

    # Customer ID
  When I enter customer ID "123456789003"
    And I touch customer ID Continue button
    Then I am taken to Customer Verification Account Number screen

    # Account number
  When I enter Account Number "12345670"
    Then I am taken to Customer Verification Card Number screen
    And I enter Customer Verification Card Number
    Then I am taken to the SMS verification screen

    # SMS verification
  When I enter the SMS verification code "11111111"
    Then I am taken to Password creation screen

    # Password
    And I create Password "Password1"
    And I touch create Password Continue button
    And I am taken to Password confirmation screen
    And I enter Password confirmation "Password1"
    And I touch Password confirmation Continue button
    Then I am taken to the Security Code creation screen

    # Security Code
  When I create Security Code "11111111"
    Then I am taken to confirm Security Code screen
    And I enter Security Code confirmation "11111111"
    Then I am taken to the Passcode creation screen

    # Passcode
  When I enter Passcode
    Then I am taken to Passcode confirmation screen
    And I confirm Passcode

    # Registration successful
    Then I am taken to the Registration Successful screen
  When I touch Start Metro Bank button
    Then I can see the Accounts screen

@regFlowAccNumErr
Scenario: registration flow with errors non IB Account Number
  Given I am on the registration start screen
    Then I can see the registration start screen
  When I touch Get Started button
    Then I am taken to the Terms and Conditions screen
  When I touch I Accept button
    Then I am taken to the registration ID screen
    Then I am taken to the registration ID screen
    When I enter customer ID "123456"
      And I touch customer ID Continue button
      Then I am shown Customer ID error message
      When I enter customer ID "123456789003"
        And I touch customer ID Continue button
        Then I am taken to Customer Verification Account Number screen
  When I enter Account Number "12345670"
    Then I am taken to Customer Verification Card Number screen
  When I enter first Customer Verification Card Number "1"
    And I enter second Customer Verification Card Number "1"
    And I enter third Customer Verification Card Number "1"
    And I enter fourth Customer Verification Card Number "1"
    Then I am taken to the SMS verification screen
When I enter the SMS verification code "12345678"
  Then I am shown invalid verification code error message
  When I enter the SMS verification code "11111111"
  Then I am taken to Password creation screen
    And I create Password "Password1"
    And I touch create Password Continue button
    And I am taken to Password confirmation screen
    And I enter Password confirmation "Password2"
    Then I am shown Password confirmation error screen
      And I create Password "Password1"
      And I touch create Password Continue button
      And I am taken to Password confirmation screen
      And I enter Password confirmation "Password1"
      And I touch Password confirmation Continue button
      Then I am taken to the Security Code creation screen
  When I create Security Code "11111111"
    Then I am taken to confirm Security Code screen
    And I enter Security Code confirmation "11111112"
    Then I am shown Security Code error screen

# Login Service
@loginFlow @loginsuccess
Scenario: Login with no errors
  Given I am on the Login screen
    Then I can see the Login screen
  When I enter first Login Passcode digit "1"
    And I enter second Login Passcode digit "1"
    And I enter third Login Passcode digit "1"
    And I enter fourth Login Passcode digit "1"
    Then I can see the Accounts screen

@loginErrorFlow @loginerror
Scenario: Login with errors
  Given I am on the Login screen
    Then I can see the Login screen
  When I enter first Login Passcode digit "1"
    And I enter second Login Passcode digit "1"
    And I enter third Login Passcode digit "1"
    And I enter fourth Login Passcode digit "2"
    Then I am shown Login error message

# Accounts Service
@accountsScreen
Scenario: Accounts Screen

  #Login
  Given that I am an authenticated user
    Then I can see the Accounts screen

  # Personal Accounts
  Then I can see Personal Accounts list
    And I scroll down Personal Accounts list

  # Business Accounts
  When I switch the filter to Business
    And I can see Business Accounts list
    And I scroll down Business Accounts list

@personalWIP
Scenario: Personal Accounts

  # Login
  Given that I am an authenticated user
    Then I can see the Accounts screen

  # Personal Account details
  When I touch the first Personal Account card
    Then I can see the Personal Account details page
    And I scroll down Personal Account transactions
    Then I can see Personal Account transactions
    And I can see Account Name and Balance in toolbar

  # Personal Account actions menu
  When I touch Account Actions button
    Then I can see Account Actions menu
    And I scroll until I see Card Actions
    Then I can see Card Actions
  When I close Account Actions menu
    Then I can see the Personal Account details page

@businessWIP
Scenario: Business Accounts

  # Login
  Given that I am an authenticated user
    Then I can see the Accounts screen
  When I switch the filter to Business
    And I can see Business Accounts list

  # Business Account details
  When I touch the first Business Account card
    Then I can see Business Account details page
    And I scroll down Business Account transactions
    Then I can see Business Account transactions

  # Business Account actions menu
  When I touch Account Actions button
    Then I can see Account Actions menu
    And I scroll until I see Card Actions
    Then I can see Card Actions
  When I close Account Actions menu
    Then I can see Business Account details page

# Transfers Service
@transfers @transfer
Scenario: Transfer
Given I am on the Login screen
  Then I can see the Login screen
When I enter first Login Passcode digit "1"
  And I enter second Login Passcode digit "1"
  And I enter third Login Passcode digit "1"
  And I enter fourth Login Passcode digit "1"
    Then I can see the Accounts screen
    And I can see Transfers in the Navigation Bar
  When I touch Transfers button
    Then I can see Transfers screen
    And I touch From Account option
      Then I can see Select From Account screen
  When I touch From Account card
    Then I can see Transfers screen
    And I can see chosen From Account
  When I touch To Account option
    Then I can see Select Account screen
    And I touch To Account card
    Then I can see Transfers screen
    And I can see chosen to Account
  When I touch Transfer Amount field
   And I enter Transfer Amount "10"
   And I hide keyboard
   Then I touch Make Transfer button
   Then I can see the confirm transfer screen
   And I touch confirm button
   Then I can see the Transfer Success screen

@Accounts @account
Scenario: Accounts
Given I am on the Login screen
  Then I can see the Login screen
When I enter first Login Passcode digit "1"
  And I enter second Login Passcode digit "1"
  And I enter third Login Passcode digit "1"
  And I enter fourth Login Passcode digit "1"
    Then I can see the Accounts screen
    Then I Scroll down



# Others Service
