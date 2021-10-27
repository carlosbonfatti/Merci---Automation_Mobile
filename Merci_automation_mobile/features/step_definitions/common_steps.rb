Dado('que o usuário acesse a tela de login') do
  @screen.home.access_permission
  @screen.home.access_login_screen
end

Quando('todas as informações de login {string} forem preenchidas corretamente') do |dado|
  file = YAML.load_file(File.join(Dir.pwd, "/features/support/config/environments/environmentsAndroid/login.yml"))
  @dice = file[dado]
  @screen.login.login_success(@dice)
  @screen.login.fill_sms(@dice)
  @screen.login.password(@dice)
end  

Entao('o usuário deverá ser direcionado para a área logada') do
  WaitingHelpers.wait_for_element_be_displayed(id: 'app.wl.oscar.sandbox:id/appToolbar')
  expect(find_element(id:'app.wl.oscar.sandbox:id/appToolbar').displayed?).to be true
end
