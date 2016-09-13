

Then(/^I can see Select From Account screen$/) do
  @current_page = page(AccountSelectionPage).await(timeout: 10)
  @current_page.is_this_account_selection_screen
end

When(/^I touch From Account card$/) do
  @current_page.touch_from_account_card
end

Then(/^I can see Select To Account screen$/) do
  @current_page.is_this_account_selection_screen
end
