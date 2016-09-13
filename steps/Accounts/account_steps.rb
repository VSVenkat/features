Given(/^I am on the Accounts screen$/) do
  @current_page = page(AccountPage).await(timeout: 10)
  @current_page.is_this_login_screen
end

Then(/^I can see the Accounts screen$/) do
  @current_page = page(AccountPage).await(timeout: 10)
  @current_page.is_this_account_screen
end

And(/^I can see Transfers in the Navigation Bar$/) do
  @current_page.is_transfer_icon_exists_in_naviagtion
end
When(/^I touch Transfers button$/) do
  @current_page.touch_transfer_icon_in_navigation_bar
end

Then(/^I Scroll down$/) do
  @current_page.scroll_gen
end
