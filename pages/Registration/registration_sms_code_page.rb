require 'calabash-android/abase'

class RegistrationSMSCodePage < Calabash::ABase

  def trait
    "* marked:'reg_screen4_title'"
  end

  def is_this_registration_sms_code_screen
    element_exists("* id:'reg_screen4_title'")
  end

  def hide_login_keyboard
    hide_soft_keyboard
    sleep 2
  end
  def touch_sms_code_field
    touch("* id:'customer_id_edit_text'")
  end

  def enter_sms_code(smscode)
    keyboard_enter_text(smscode)
  end

end
