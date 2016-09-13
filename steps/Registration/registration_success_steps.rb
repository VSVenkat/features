Then(/^I am taken to the Registration Successful screen$/) do
  @current_page = page(RegistrationSuccessPage).await(timeout: 10)
  @current_page.is_this_registration_success_screen
end
When(/^I touch Start Metro Bank button$/) do
  @current_page.touch_start_metro_bank_button
end
