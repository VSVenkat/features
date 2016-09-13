require 'calabash-android/abase'

class RegistrationCustomerVerificationLastFourDigitsPage < Calabash::ABase

  def trait
    "* marked:'non_ib_reg_screen2_subtitle'"
  end

  def hide_login_keyboard
    hide_soft_keyboard
    sleep 2
  end


  def is_this_registration_customer_verification_last_four_digits_screen
    element_exists("* id:'non_ib_reg_screen2_subtitle'")
  end

  def enter_digit(accountid)
    keyboard_enter_text(accountid)
    
    sleep 2
  end

end
