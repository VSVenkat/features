Given(/^I am on the registration start screen$/) do
  @current_page = page(RegistrationPage).await(timeout: 10)
  @current_page.is_this_registration_screen
end
Then(/^I can see the registration start screen$/) do
  @current_page = page(RegistrationPage).await(timeout: 10)
  @current_page.is_this_registration_screen
end
When(/^I touch Get Started button$/) do
  @current_page.touch_get_started_button
end
