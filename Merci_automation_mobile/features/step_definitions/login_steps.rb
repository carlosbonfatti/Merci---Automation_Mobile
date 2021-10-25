


Quando('todas as informações de login forem preenchidas corretamente') do
  @user = select_user('with_digital_account')
  find_element(@screen.login.input_cpf).send_keys(@user['cpf'])
  find_element(@screen.login.input_phone).send_keys(@user['phone_number'])
  find_element(@screen.login.btn_continue).click
  @screen.login.fill_sms
  find_element(@screen.login.input_password).send_keys(@user['password'])
end

Entao('o usuário deverá ser direcionado para a área logada') do
  WaitingHelpers.wait_for_element_be_displayed(wallet.card_view)
  expect(find_element(wallet.card_view).displayed?).to be true
end
