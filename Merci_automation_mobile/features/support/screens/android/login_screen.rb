class LoginScreen
  attr_reader :input_cpf, :input_phone, :bt_continue, :bt_ok_sms, :bt_0, :bt_1, :bt_2, :bt_3, :bt_4, :bt_5, :msg_erro, :bt_ok_senha,
              :input_sms, :input_password, :btn_forgot_password, :msg_cpf_invalido

  def initialize
    @input_cpf = { xpath: './/android.widget.EditText[@text="Seu CPF"]' }
    @input_phone = { xpath: './/android.widget.EditText[@text="Telefone com DDD"]' }
    @bt_continue = { id: "app.wl.oscar.sandbox:id/buttonContinue" }
    @input_sms = { id: "app.wl.oscar.sandbox:id/editText" }
    @input_password = { xpath: './/android.widget.EditText[@text="Senha"]' }
    @btn_forgot_password = { id: "forgotPwdButton" }
    @msg_erro = { id: "app.wl.oscar.sandbox:id/messageTextView" }
    @bt_ok_sms = { id: "app.wl.oscar.sandbox:id/button" }
    @bt_0 = { id: "app.wl.oscar.sandbox:id/editText0" }
    @bt_1 = { id: "app.wl.oscar.sandbox:id/editText1" }
    @bt_2 = { id: "app.wl.oscar.sandbox:id/editText2" }
    @bt_3 = { id: "app.wl.oscar.sandbox:id/editText3" }
    @bt_4 = { id: "app.wl.oscar.sandbox:id/editText4" }
    @bt_5 = { id: "app.wl.oscar.sandbox:id/editText5" }
    @bt_ok_senha = { id: "app.wl.oscar.sandbox:id/primaryButton" }
    @msg_cpf_invalido = { id: "app.wl.oscar.sandbox:id/textinput_error" }
  end

  def login_success_cpf(dice)
    send_keys(input_cpf, dice["cpf"])
  end

  def cpf_faker
    send_keys(input_cpf, Faker::CPF.pretty)
    # find_element(input_cpf).send_keys(Faker::CPF.pretty)
  end

  def login_success_fone(dice)
    send_keys(input_phone, dice["fone"])
  end

  def btn_continue
    click(bt_continue)
  end

  def password(dice)
    send_keys(input_password, dice["senha"])
  end

  def btn_ok_SMS
    click(bt_ok_sms)
  end

  def btn_ok_Senha
    click(bt_ok_senha)
  end

  def fill_sms(dice)
    send_keys(bt_0, dice["n0"])
    send_keys(bt_1, dice["n1"])
    send_keys(bt_2, dice["n2"])
    send_keys(bt_3, dice["n3"])
    send_keys(bt_4, dice["n4"])
    send_keys(bt_5, dice["n5"])
  end

  def msgErro
    return find_element(msg_erro)
  end

  def cpf_invalido_msg
    return find_element(msg_cpf_invalido)
  end

  def scroll_screen
    swipe(
      start_x: 20,
      start_y: 1000,
      end_x: 20,
      end_y: 500,
      duration: 500,
    ).perform
  end
end
