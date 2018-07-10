module ApplicationHelper
  def login_helper
    if current_user
     link_to "logout", destroy_user_session_path, method: :delete
    else   # if no user
      (link_to "register", new_user_registration_path) +
      "<br>".html_safe +
     (link_to "log-in", new_user_session_path)
   end
  end
  def source_helper # login from fb, twitter
    if session[:mero_session]
    greeting ="Thankyou for visiting me from: #{session[:mero_session]}"
    content_tag(:p,greeting,class: "source-greeting")
    end
  end


end
