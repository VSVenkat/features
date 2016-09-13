Then(/^I am taken to the registration Customer Verification Account Number screen$/) do
  @current_page = page(RegistrationCustomerVerificationAccountIDPage).await(timeout: 10)
  @current_page.is_this_registration_customer_verification_account_id_screen
end

When(/^I enter Account ID "([^"]*)"$/) do |accountid|
  @current_page.enter_account_id(accountid)
end
