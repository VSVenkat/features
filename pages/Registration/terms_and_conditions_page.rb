require 'calabash-android/abase'

class TermsAndConditionsPage < Calabash::ABase

  def trait
    "* marked:'toolbar_title'"
  end

  def is_this_termsandconditions_screen
    element_exists("* text:'TERMS & CONDITIONS'")
    sleep 2
  end

  def hide_login_keyboard
    hide_soft_keyboard
    sleep 2
  end

def touch_accept_button
  touch("* id:'terms_and_conditions_continue'")
  
end

end
