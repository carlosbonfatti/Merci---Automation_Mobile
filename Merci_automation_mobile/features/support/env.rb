require 'appium_console'
require 'appium_lib'
require 'cucumber'
require 'pry'
require 'rspec'
require 'selenium-webdriver'

EL_ANDROID = YAML.load_file(File.join(Dir.pwd,'features/support/config/elements/android/elements_android.yml'))

@device = ENV['DEVICE']

case @device
when 'android'
  @device_caps = File.expand_path('config/caps/android/local/appium.txt', __dir__)
when 'iOS'
  @device_caps = File.expand_path('config/caps/iOS/local/appium.txt', __dir__)
end

@caps = Appium.load_appium_txt file: @device_caps.to_s, verbose: true
Appium::Driver.new(@caps, true)
Appium.promote_appium_methods Object
