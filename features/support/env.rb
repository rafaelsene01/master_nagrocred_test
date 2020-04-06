require 'capybara'
require 'capybara/dsl'
require 'capybara/rspec/matchers'
require 'selenium-webdriver'
require 'site_prism'
require 'rspec'
require 'faker'
require_relative 'page_helper.rb'
require_relative 'helper.rb'
require 'date'

World(Capybara::DSL)
World(Capybara::RSpecMatchers)
World(Pages)

HEADLESS = ENV['HEADLESS']
ENVIRONMENT_TYPE = ENV['ENVIRONMENT_TYPE']

CONFIG = YAML.load_file(File.dirname(__FILE__) +
"/data/#{ENVIRONMENT_TYPE}.yml")

Capybara.register_driver :selenium do |app|
  options = Selenium::WebDriver::Chrome::Options.new
  if HEADLESS.eql?('sem_headless')
    options.add_argument('--disable-infobars')
    options.add_argument('--window-size=1600,1024')
  elsif HEADLESS.eql?('com_headless')
    options.add_argument('--headless')
    options.add_argument('--no-sandbox')
    options.add_argument('--disable-infobars')
    options.add_argument('--disable-gpu')
    options.add_argument('--window-size=1600,1024')
  end

  Capybara::Selenium::Driver.new(app, browser: :chrome, options: options)
end

Capybara.javascript_driver = :headless_chrome

Capybara.configure do |config|
    config.default_driver = :selenium
    config.default_max_wait_time = 10
    config.app_host = CONFIG['url_home']
    $email = CONFIG['email']
    $senha = CONFIG['senha']
end
