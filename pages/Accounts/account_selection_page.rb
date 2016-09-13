require 'calabash-android/abase'

class AccountSelectionPage < Calabash::ABase

  def trait
    "* marked:'background_right'"
  end

  def is_this_account_selection_screen
    element_exists("* id:'card_first_line'")
  end

  def hide_login_keyboard
    hide_soft_keyboard
    sleep 2
  end

  def select_from_account
    touch("* text:'Select From Account'")
  end

  def touch_from_account_card
    touch("* text:'Regular Current Account'")
  end
end
