require 'calabash-android/abase'

class TransferSuccessPage < Calabash::ABase

  def trait
    "* marked:'account_op_dialog_header'"
  end

  def is_this_transfer_success_screen
    element_exists("* text:'TRANSFER SUCCESSFUL!'")
  end

  def hide_login_keyboard
    hide_soft_keyboard
    sleep 2
  end
end
