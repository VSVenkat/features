Then(/^I can see Transfers screen$/) do
  @current_page = page(TransferPage).await(timeout: 10)
  @current_page.is_this_transfer_screen
end

And(/^I touch From Account option$/) do
  @current_page.touch_from_account
end

And(/^I can see chosen From Account$/) do
  @current_page.see_chosen_from_account
end

And(/^I can see chosen to Account$/) do
  @current_page.see_chose_to_accounts
end

When(/^I touch To Account option$/) do
  @current_page.touch_to_account_option
end
When(/^I touch Transfer Amount field$/) do
  @current_page.touch_transfer_amount_field
end
And(/^I enter Transfer Amount "(.*?)"$/) do |amount|
  @current_page.enter_transfer_amount(amount)
end
And(/^I hide keyboard$/) do
  @current_page.hide_login_keyboard
end
Then(/^I touch Make Transfer button$/) do
  @current_page.touch_make_transfer_button
end
