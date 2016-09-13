require 'calabash-android/abase'

class TransferPage < Calabash::ABase

  def trait
    "* marked:'toolbar_logo'"
  end

  def is_this_transfer_screen
    element_exists("* id:'account_selector_choose_account'")
    sleep 2
  end

  def hide_login_keyboard
    hide_soft_keyboard
    sleep 2
  end

  def touch_from_account
    touch("* id:'account_selector_choose_account'")
  end
  def see_chosen_from_account
    element_exists("* id:'view_account_detail_account_nickname'")
  end
  def see_chose_to_accounts
    element_exists("* id:'view_account_detail_account_nickname'")
  end

  def touch_to_account_option
    touch("* id:'account_selector_choose_account'")
  end
  def touch_transfer_amount_field
    touch("* id:'amount_edit_text'")
  end
  def enter_transfer_amount(text)
    keyboard_enter_text(text)
  end
  def touch_make_transfer_button
    touch("* id:'button'")
  end
end
