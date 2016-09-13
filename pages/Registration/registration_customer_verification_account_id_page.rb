require 'calabash-android/abase'

class RegistrationCustomerVerificationAccountIDPage < Calabash::ABase

  def trait
    "* marked:'non_ib_reg_screen1_subtitle'"
  end

  def hide_login_keyboard
    hide_soft_keyboard
    sleep 2
  end


  def is_this_registration_customer_verification_account_id_screen
    element_exists("* id:'non_ib_reg_screen1_subtitle'")
  end

  def enter_account_id(accountid)
    keyboard_enter_text(accountid)
    hide_soft_keyboard
    sleep 2
  end

end
