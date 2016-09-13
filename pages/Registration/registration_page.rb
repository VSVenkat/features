require 'calabash-android/abase'

class RegistrationPage < Calabash::ABase

  def trait
    "* marked:'get_started'"
  end

  def is_this_registration_screen
    element_exists("* id:'get_started'")
  end

  def hide_login_keyboard
    hide_soft_keyboard
    sleep 2
  end

  def touch_get_started_button
    touch("* id:'get_started'")
  end

end
