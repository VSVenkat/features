
Then(/^I can see Select Account screen$/) do
  @current_page = page(AccountToSelectionPage).await(timeout: 10)
  @current_page.is_this_account_to_selection_screen
end

And(/^I touch To Account card$/) do
  @current_page.touch_to_account
end

And(/^I can see chosen To Account$/) do
  @current_page.see_chose_to_accounts
end
