Dado('que o usuário acesse a tela de login') do
  @screen.logo.access_permission
end

Quando('todas as informações de login {string} forem preenchidas corretamente') do |dado|
  file = YAML.load_file(File.join(Dir.pwd, "/features/support/config/environments/environmentsAndroid/login.yml"))
  @dice = file[dado]
  @screen.logo.access_login_screen
  @screen.login.login_success(@dice)
  @screen.login.fill_sms(@dice)
  @screen.login.password(@dice)
end  

Entao('o usuário deverá ser direcionado para a área logada') do
  WaitingHelpers.wait_for_element_be_displayed(id: 'app.wl.oscar.sandbox:id/appToolbar')
  expect(find_element(id:'app.wl.oscar.sandbox:id/appToolbar').displayed?).to be true
end


Quando('todas as informações de login {string} forem preenchidas porem o sms incorreto') do |dado|
  file = YAML.load_file(File.join(Dir.pwd, "/features/support/config/environments/environmentsAndroid/login.yml"))
  @dice = file[dado]
  @screen.logo.access_login_screen
  @screen.login.login_success(@dice)
  @screen.login.fill_sms(@dice)
end

Entao('o usuario vera a mensagem {string}') do |msgErro1|
  expect(@screen.login.msgErroSms.text).to eql msgErro1
  @screen.login.btn_ok
end

Quando('todas as informações de login {string} forem preenchidas porem senha esteja incorreta') do |dado|
  file = YAML.load_file(File.join(Dir.pwd, "/features/support/config/environments/environmentsAndroid/login.yml"))
  @dice = file[dado]
  @screen.logo.access_login_screen
  @screen.login.login_success(@dice)
  @screen.login.fill_sms(@dice)
  @screen.login.password(@dice)
end