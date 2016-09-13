require 'calabash-android/abase'

class RegistrationSuccessPage < Calabash::ABase

  def trait
    "* marked:'REGISTRATION SUCCESSFUL'"
  end

  def is_this_registration_success_screen
    element_exists("* text:'REGISTRATION SUCCESSFUL'")
  end

  def hide_login_keyboard
    hide_soft_keyboard
    sleep 2
  end
  def touch_start_metro_bank_button
    touch("* id:'reg_success_button'")
  end


end
