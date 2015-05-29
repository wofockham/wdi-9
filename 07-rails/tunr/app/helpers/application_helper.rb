module ApplicationHelper
  def intellinav
    nav = ''

    if @current_user.present?
      nav += '<li>' + link_to("Edit profile", edit_users_path) + '</li>'
      nav += '<li>' + link_to("Log out #{ @current_user.name }", login_path, :method => :delete) + '</li>'
    else
      nav += '<li>' + link_to('Sign up', new_user_path) + '</li>'
      nav += '<li>' + link_to('Log in', login_path) + '</li>'
    end

    nav
  end
end
