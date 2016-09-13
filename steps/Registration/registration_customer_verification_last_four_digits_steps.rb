Then(/^I am taken to the registration Customer Verification Last four Digits screen$/) do

    @current_page = page(RegistrationCustomerVerificationLastFourDigitsPage).await(timeout: 10)
    @current_page.is_this_registration_customer_verification_last_four_digits_screen
end

And(/^I enter first digit "([^"]*)"$/) do |firstnumber|
  @current_page.enter_digit(firstnumber)
end

And(/^I enter second digit "([^"]*)"$/) do |secondnumber|
  @current_page.enter_digit(secondnumber)
end
And(/^I enter third digit "([^"]*)"$/) do |thirdnumber|
  @current_page.enter_digit(thirdnumber)
end
And(/^I enter fourth digit "([^"]*)"$/) do |fourthnumber|
  @current_page.enter_digit(fourthnumber)
end
