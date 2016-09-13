Then(/^I can see the Transfer Success screen$/) do
  @current_page = page(TransferSuccessPage).await(timeout: 10)
  @current_page.is_this_transfer_success_screen
end
