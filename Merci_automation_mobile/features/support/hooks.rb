Before do
  driver.start_driver
  driver.manage.timeouts.implicit_wait = 30

  @screen = DroidScreens.new if ENV['ENV_DEVICE_PREFIX'].eql?('android')
  @screen = IOSScreens.new if ENV['ENV_DEVICE_PREFIX'].eql?('iOS')
end

Before("@telalogin") do
 steps %(
  Dado que o usuário acesse a tela de login
 )
end


After do |scenario|
  screenshot_name = "#{Time.now.to_i}-#{scenario.name.gsub('/', '-')}.png"
  screenshot_path = "reports/screenshots/#{screenshot_name}"
  Allure.add_attachment(
    name: "Screenshot - #{scenario.name}",
    source: @driver.screenshot(screenshot_path),
    type: Allure::ContentType::PNG
  )

  @driver.driver_quit
end
