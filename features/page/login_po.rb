
class LoginPage < SitePrism::Page
  element :username, '#username'
  element :password, '#password'
  element :login_button, 'button[type=submit]'
  element :warning_message, 'div[class*="flash success"]'
  element :logout_button, 'a[href$=logout]'
  
  def authorized_user
    username.set ENV['USERNAME']
    password.set ENV['PASSWORD']
    login_button.click
  end
end
