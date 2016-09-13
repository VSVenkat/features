require 'calabash-android/abase'

class RegistrationCreatePasswordPage < Calabash::ABase

  def trait
    "* marked:'toolbar_title'"
  end

  def hide_login_keyboard
    hide_soft_keyboard
    sleep 2
  end


  def is_this_registration_create_password_screen
    element_exists("* id:'reg_screen1_title'")
  end

  def create_password(password)
    keyboard_enter_text(password)
    hide_soft_keyboard
    sleep 2
  end

  def touch_enter_password_field
    touch("* id:'customer_id_edit_text'")
  end
  def touch_continue_button
    touch("* id:'non_ib_reg_screen5_button'")
  end
  def touch_recontinue_button
    touch("* id:'non_ib_reg_screen6_button'")
  end

end
