require 'capybara/cucumber'
require 'cucumber'
require 'rspec'
require 'pry'
require 'selenium-webdriver'
require 'site_prism'

Capybara.configure do |c| 
  c.app_host = 'https://www.enjoei.com.br/'
  c.default_driver = :selenium_chrome
  c.default_max_wait_time = 5
end