
Then(/^I am taken to the registration ID screen$/) do
  @current_page = page(RegistrationCustomerIDPage).await(timeout: 10)
  @current_page.is_this_registration_customer_id_screen
end

When(/^I enter customer ID "([^"]*)"$/) do |id|
  @current_page.enter_customer_id(id)
end

When(/^I touch customer ID Continue button$/) do
  @current_page.touch_customer_id_continue_button
end
