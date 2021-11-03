Dado('que o usuário acesse a tela de login') do
<<<<<<< HEAD
  @screen.logo.access_permission
end

Quando('todas as informações de login {string} forem preenchidas corretamente') do |dado|
  file = YAML.load_file(File.join(Dir.pwd, "/features/support/config/environments/environmentsAndroid/login.yml"))
  @dice = file[dado]
  @screen.logo.access_login_screen
  @screen.login.login_success_cpf(@dice)
  @screen.login.login_success_fone(@dice)
  @screen.login.btn_continue
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
  @screen.login.cpf_faker
  @screen.login.login_success_fone(@dice)
  @screen.login.btn_continue
  @screen.login.fill_sms(@dice)
end

Entao('o usuario vera a mensagem de erro sms {string}') do |msgErro1|
  expect(@screen.login.msgErro.text).to eql msgErro1
  @screen.login.btn_ok_SMS
end

Quando('todas as informações de login {string} forem preenchidas porem senha esteja incorreta') do |dado|
  file = YAML.load_file(File.join(Dir.pwd, "/features/support/config/environments/environmentsAndroid/login.yml"))
  @dice = file[dado]
  @screen.logo.access_login_screen
  @screen.login.login_success_cpf(@dice)
  @screen.login.login_success_fone(@dice)
  @screen.login.btn_continue
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
  @screen.home.access_login_screen
  @screen.login.login_success(@dice)
  @screen.login.fill_sms(@dice)
end
<<<<<<< HEAD
Entao('o usuario vera a mensagem de erro senha {string}') do |msgErro2|
  expect(@screen.login.msgErro.text).to eql msgErro2
  @screen.login.btn_ok_Senha
end

Quando('o CPF {string} inserido for invalido') do |dado|
  file = YAML.load_file(File.join(Dir.pwd, "/features/support/config/environments/environmentsAndroid/login.yml"))
  @dice = file[dado]
  @screen.logo.access_login_screen
  @screen.login.login_success_cpf(@dice)
end

Entao('o usuario vera mensagem {string}') do |cpf_invalido|
  expect(@screen.login.cpf_invalido_msg.text).to eql cpf_invalido
=======

Entao('o usuario vera a mensagem {string}') do |msgErro1|
  # @screen.login.btn_ok
  expect(@screen.login.msgErroSms.text).to eql msgErro1
end

Quando('todas as informações de login {string} forem preenchidas porem senha esteja incorreta') do |dado|
  file = YAML.load_file(File.join(Dir.pwd, "/features/support/config/environments/environmentsAndroid/login.yml"))
  @dice = file[dado]
  @screen.home.access_login_screen
  @screen.login.login_success(@dice)
  @screen.login.fill_sms(@dice)
  @screen.login.password(@dice)
>>>>>>> origin/uat
end