Then(/^I am taken to the Create Security code screen$/) do
  @current_page = page(RegistrationCreateSecurityPage).await(timeout: 10)
  @current_page.is_this_registration_create_security_screen

end
Then(/^I touch Security Code field$/) do
  @current_page.touch_security_code_field
end
Then(/^enter security code "([^"]*)"$/) do |code|
  @current_page.enter_security_code(code)
end
