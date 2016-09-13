require 'calabash-android/abase'

class AccountToSelectionPage < Calabash::ABase

  def trait
    "* marked:'background_right'"
  end

  def is_this_account_to_selection_screen
    element_exists("* text:'Select To Account'")
  end

  def hide_login_keyboard
    hide_soft_keyboard
    sleep 2
  end
  def touch_to_account
    touch("* text:'Regular Current Account'")
  end


end
