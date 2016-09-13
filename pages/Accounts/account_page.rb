require 'calabash-android/abase'

class AccountPage < Calabash::ABase

  def trait
    "* marked:'acl_entity_num_accounts'"
  end

  def is_this_account_screen
    element_exists("* id:'acl_entity_num_accounts'")
  end

  def hide_login_keyboard
    hide_soft_keyboard
    sleep 2
  end

  def is_transfer_icon_exists_in_naviagtion
    element_exists("* id:'navigation_item_transfers'")
  end

  def touch_transfer_icon_in_navigation_bar
    touch("* id:'navigation_item_transfers'")
  end
  def scroll_gen
    scroll_down
  end

end
