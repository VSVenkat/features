Then(/^I am taken to Passcode confirmation screen$/) do
  @current_page = page(RegistrationCreatePasscodeConfirmationPage).await(timeout: 10)
  @current_page.is_this_registration_create_passcode_confirmation_screen
end

When(/^I enter first confirm Passcode digit "([^"]*)"$/) do |code|
  @current_page.enter_confirm_passcode(code)
end

When(/^I enter second confirm Passcode digit "([^"]*)"$/) do |code|
  @current_page.enter_confirm_passcode(code)
end

When(/^I enter third confirm Passcode digit "([^"]*)"$/) do |code|
  @current_page.enter_confirm_passcode(code)
end

When(/^I enter fourth confirm Passcode digit "([^"]*)"$/) do |code|
  @current_page.enter_confirm_passcode(code)
end
