require 'calabash-android/abase'

class ConfirmTransferPage < Calabash::ABase

  def trait
    "* marked:'account_op_dialog_header'"
  end

  def is_this_confirm_transfer_screen
    element_exists("* id:'account_op_dialog_header'")
  end

  def hide_login_keyboard
    hide_soft_keyboard
    sleep 2
  end

  def touch_confirm_transfer_button
    touch("* text:'Confirm'")
  end
end
