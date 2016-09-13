require 'calabash-android/abase'

class LoginPage < Calabash::ABase

  def trait
    "* marked:'splash_logo_passcode'"
  end

  def is_this_login_screen
    element_exists("* id:'login'")
  end

  def hide_login_keyboard
    hide_soft_keyboard
    sleep 2
  end

  def touch_login_passcode_field
    touch("* id:'state_empty'")
  end

  def enter_first_login_passcode_digit(text)
    keyboard_enter_text(text)
  end

  def enter_second_login_passcode_digit(text)
    keyboard_enter_text(text)
  end

  def enter_third_login_passcode_digit(text)
    keyboard_enter_text(text)
  end

  def enter_fourth_login_passcode_digit(text)
    keyboard_enter_text(text)
  end

  def login_error_message
    element_exists("* id:'generic_error_message'")
    sleep 2
  end

  def login
    keyboard_enter_text("1111")
  end


end
