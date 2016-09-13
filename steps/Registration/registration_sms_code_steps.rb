
Then(/^I am taken to the Registration SMS Code screen$/) do
  @current_page = page(RegistrationSMSCodePage).await(timeout: 10)
  @current_page.is_this_registration_sms_code_screen
end
Then(/^I touch SMS code field$/) do

  @current_page.touch_sms_code_field
end

Then(/^enter code "([^"]*)"$/) do |smscode|
  @current_page.enter_sms_code(smscode)
end
