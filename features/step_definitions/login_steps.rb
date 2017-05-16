#encoding: utf-8

Given(/^I access the page "([^"]*)"$/) do |site|
  visit site
end

Given(/^I have a registered user$/) do
  @login.username.set ENV['USERNAME']
  @login.password.set ENV['PASSWORD']

end

When(/^I login$/) do
  @login.login_button.click
end

Then(/^I should see the "([^"]*)" login message$/) do |message|
  expect(@login.warning_message.text).to have_content message
end

Given(/^I have an authorized user$/) do
  @login.authorized_user
end

When(/^I logout$/) do
  @login.logout_button.click
end

Then(/^I should see the "([^"]*)" logout message$/) do |message|
  expect(@login.warning_message.text).to have_content message
end
