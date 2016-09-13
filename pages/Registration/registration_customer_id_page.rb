require 'calabash-android/abase'

class RegistrationCustomerIDPage < Calabash::ABase

  def trait
    "* marked:'toolbar_title'"
  end

  def hide_login_keyboard
    hide_soft_keyboard
    sleep 2
  end


  def is_this_registration_customer_id_screen
    element_exists("* id:'reg_screen1_title'")
  end

  def enter_customer_id(id)
    keyboard_enter_text(id)
    hide_soft_keyboard
    sleep 2
  end

  def touch_customer_id_continue_button
    touch("* id:'reg_screen1_button'")
  end
end
