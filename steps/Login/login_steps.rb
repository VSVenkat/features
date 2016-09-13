Given(/^I am on the Login screen$/) do
  @current_page = page(LoginPage).await(timeout: 10)
  @current_page.is_this_login_screen
end

Given(/^that I am an authenticated user and I enter Login Passcode digit "(.*?)" and "(.*?)" and "(.*?)" and "(.*?)"$/) do |passcode1,pascode2,passcode3,passcode4|
  @current_page = page(LoginPage).await(timeout: 10)
  @current_page.is_this_login_screen
  @current_page.hide_login_keyboard
  @current_page.touch_login_passcode_field
  @current_page.enter_first_login_passcode_digit(passcode1)
  @current_page.enter_second_login_passcode_digit(passcode2)
  @current_page.enter_third_login_passcode_digit(passcode3)
  @current_page.enter_fourth_login_passcode_digit(passcode4)
end


Then(/^I can see the Login screen$/) do
  @current_page.is_this_login_screen
end

When(/^I hide the onscreen keyboard$/) do
  @current_page.hide_login_keyboard
end

And(/^I touch Login Passcode field$/) do
  @current_page.touch_login_passcode_field
end

When(/^I enter first Login Passcode digit "(.*?)"$/) do |passcode|
  @current_page.enter_first_login_passcode_digit(passcode)
end

And(/^I enter second Login Passcode digit "(.*?)"$/) do |passcode|
  @current_page.enter_second_login_passcode_digit(passcode)
end

And(/^I enter third Login Passcode digit "(.*?)"$/) do |passcode|
  @current_page.enter_third_login_passcode_digit(passcode)
end

And(/^I enter fourth Login Passcode digit "(.*?)"$/) do |passcode|
  @current_page.enter_fourth_login_passcode_digit(passcode)
end


# Login error messaging

Then(/^I am shown Login error message$/) do
  @current_page = page(LoginPage).await(timeout: 10)
  @current_page.login_error_message
end
