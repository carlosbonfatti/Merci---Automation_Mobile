require "allure-cucumber"
require "appium_console"
require "appium_lib"
require "capybara"
require "cucumber"
require "faker"
require "pry"
require "rspec"
require "selenium-webdriver"

EL_ANDROID = YAML.load_file(File.join(Dir.pwd, "features/support/config/elements/android/elements_android.yml"))

@device = ENV["DEVICE"]

case @device
when "android"
  @device_caps = File.expand_path("config/caps/android/local/appium.txt", __dir__)
when "iOS"
  @device_caps = File.expand_path("config/caps/iOS/local/appium.txt", __dir__)
end

@caps = Appium.load_appium_txt file: @device_caps.to_s, verbose: true
Appium::Driver.new(@caps, true)
Appium.promote_appium_methods Object

Allure.configure do |c|
  c.results_directory = "/reports/allure"
  c.clean_results_directory = false
  c.logging_level = Logger::INFO
  c.environment = ENV["ENVIRONMENT"]
end

AllureCucumber.configure do |c|
  c.severity_prefix = "SEVERITY:"
end
