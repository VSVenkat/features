Then(/^I am taken to the Create Code screen$/) do
  @current_page = page(RegistrationCreatePasscodePage).await(timeout: 10)
  @current_page.is_this_registration_create_passcode_screen
end
When(/^I enter first Passcode digit "([^"]*)"$/) do |code|
  @current_page.enter_passcode(code)
end

When(/^I enter second Passcode digit "([^"]*)"$/) do |code|
  @current_page.enter_passcode(code)
end

When(/^I enter third Passcode digit "([^"]*)"$/) do |code|
  @current_page.enter_passcode(code)
end

When(/^I enter fourth Passcode digit "([^"]*)"$/) do |code|
  @current_page.enter_passcode(code)
end
