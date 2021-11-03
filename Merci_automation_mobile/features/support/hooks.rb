Before do
  driver.start_driver
  driver.manage.timeouts.implicit_wait = 30

  @screen = DroidScreens.new if ENV['ENV_DEVICE_PREFIX'].eql?('android')
  @screen = IOSScreens.new if ENV['ENV_DEVICE_PREFIX'].eql?('iOS')

  Faker::Config.locale = 'pt-BR'
end

Before("@telalogin") do
 steps %(
  Dado que o usuário acesse a tela de login
 )
end


After do |scenario|

  screenshot_name = "#{Time.now.to_i}-#{scenario.name.gsub('/', '-')}.png"
  screenshot_path = "logs/screenshots/#{screenshot_name}"
  Allure.add_attachment(
    name: "Screenshot - #{scenario.name}",
    source: driver.screenshot(screenshot_path),
    type: Allure::ContentType::PNG
  )

  driver.driver_quit


#   binary_shot = driver.screenshot_as(:base64)

#   temp_shot = "logs/temp_shot.png"

#   #grava e transforma esse binaryo em arquivo
#   File.open(temp_shot, "wb") do |f|
#     f.write(Base64.decode64(binary_shot).force_encoding("UTF-8"))
#   end 

#   Allure.add_attachment(
#     name: "screenshot",
#     type: Allure::ContentType::PNG,
#     source: File.open(temp_shot),
#   )
#   driver.driver_quit
end