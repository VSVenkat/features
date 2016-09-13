require 'calabash-android/abase'

class RegistrationCreateSecurityPage < Calabash::ABase

  def trait
    "* marked:'Create Security Code'"
  end

  def hide_login_keyboard
    hide_soft_keyboard
    sleep 2
  end


  def is_this_registration_create_security_screen
    element_exists("* text:'Create Security Code'")
  end

  def enter_security_code(id)
    keyboard_enter_text(id)
    hide_soft_keyboard
    sleep 2
  end

  def touch_security_code_field
    touch("* id:'customer_id_edit_text'")
  end
end
