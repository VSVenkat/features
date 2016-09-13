Then(/^I am taken to the Create Password screen$/) do
  @current_page = page(RegistrationCreatePasswordPage).await(timeout: 10)
  @current_page.is_this_registration_create_password_screen
end

Then(/^I touch Enter Password field$/) do
  @current_page.touch_enter_password_field
end

Then(/^enter password "([^"]*)"$/) do |password|
  @current_page.create_password(password)
end
Then(/^I touch continue button$/) do
  @current_page.touch_continue_button
end
Then(/^I touch re continue button$/) do
  @current_page.touch_recontinue_button
end
