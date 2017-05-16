require 'capybara/cucumber'
require 'selenium-webdriver'
require 'page-object'
require 'site_prism'
require 'rspec'
require 'httparty'
require 'capybara/poltergeist'

Selenium::WebDriver::Firefox::Binary.path='C:\Program Files\Mozilla Firefox\firefox.exe'

if ENV['chrome']
  Capybara.default_driver = :chrome
  Capybara.register_driver :chrome do |app|
    Capybara::Selenium::Driver.new(app, browser: :chrome)
  end
elsif ENV['firefox']
  Capybara.default_driver = :firefox
  Capybara.register_driver :firefox do |app|
    Capybara::Selenium::Driver.new(app, browser: :firefox)
  end
else ENV['headless']
  Capybara.javascript_driver = :poltergeist
  Capybara.default_driver = :poltergeist
end

ENV['USERNAME']
ENV['PASSWORD']

Capybara.default_max_wait_time = 5
