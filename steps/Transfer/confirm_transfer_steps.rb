Then(/^I can see the confirm transfer screen$/) do
  @current_page = page(ConfirmTransferPage).await(timeout: 10)
  @current_page.is_this_confirm_transfer_screen
end

And(/^I touch confirm button$/) do
  @current_page.touch_confirm_transfer_button
end
