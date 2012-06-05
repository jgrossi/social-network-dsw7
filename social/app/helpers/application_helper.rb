module ApplicationHelper
  
  def user_header
    if current_user
      link = link_to "Logout", destroy_user_session_url, :method => :delete
      email = current_user.email
      raw "Logged as <em>" + link_to("#{email}", edit_user_registration_path(current_user), :method => :get, :title => 'Update my Profile') + "</em> - #{link}"
    else
      link_to "Login", new_user_session_url
    end
      
  end
  
end
