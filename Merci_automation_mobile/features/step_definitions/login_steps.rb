Quando('todas as informações de login {string} forem preenchidas porem o sms incorreto') do |dado|
  file = YAML.load_file(File.join(Dir.pwd, "/features/support/config/environments/environmentsAndroid/login.yml"))
  @dice = file[dado]
  @screen.login.login_success(@dice)
  @screen.login.fill_sms(@dice)
  @screen.login.password(@dice)
end
Entao('o usuario vera a mensagem {string}') do |string|
  expect(@sidebar.logged_user).to eql expect_name
end

