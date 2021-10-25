Before do
  driver.start_driver
  driver.manage.timeouts.implicit_wait = 30

  @screen = DroidScreens.new if ENV['ENV_DEVICE_PREFIX'].eql?('android')
  @screen = IOSScreens.new if ENV['ENV_DEVICE_PREFIX'].eql?('iOS')
end

After do
  screenshot = driver.screenshot_as(:base64)
  attach(screenshot, 'image,png')

  driver.quit_driver
end
