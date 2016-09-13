class RegistrationCreatePasscodeConfirmationPage < Calabash::ABase
  def trait
    "* marked:'reg_screen6_title'"
  end

  def hide_login_keyboard
    hide_soft_keyboard
    sleep 2
  end
  def is_this_registration_create_passcode_confirmation_screen
    element_exists("* id:'reg_screen6_title'")
  end

  def enter_confirm_passcode(passcode)
    keyboard_enter_text(passcode)
    sleep 2
  end

end
