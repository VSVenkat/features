Then(/^I am taken to the Terms and Conditions screen$/) do
  @current_page = page(TermsAndConditionsPage).await(timeout: 10)
  @current_page.is_this_termsandconditions_screen
end

When(/^I touch I Accept button$/) do
  @current_page.touch_accept_button
end
