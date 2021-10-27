class LoginScreen
  attr_accessor :input_cpf, :input_phone, :btn_continue,
                :input_sms, :input_password, :btn_forgot_password

  def initialize
    @input_cpf = { xpath: './/android.widget.EditText[@text="Seu CPF"]' }
    @input_phone = { xpath: './/android.widget.EditText[@text="Telefone com DDD"]' }
    @btn_continue = { id: "app.wl.oscar.sandbox:id/buttonContinue" }
    @input_sms = { id: "app.wl.oscar.sandbox:id/editText" }
    @input_password = { xpath: './/android.widget.EditText[@text="Senha"]' }
    @btn_forgot_password = { id: "forgotPwdButton" }
  end

  def login_success(dice)
    find_element(input_cpf).send_keys(dice["cpf"])
    find_element(input_phone).send_keys(dice["fone"])
    find_element(btn_continue).click
  end

  def password(dice)
    find_element(input_password).send_keys(dice["senha"])
  end

  def fill_sms(dice)
    # 6.times { |index| find_element(:id, "#{@input_sms}#{index}").send_keys(index + 1) }
    find_element(id: "app.wl.oscar.sandbox:id/editText0").send_keys(dice["n0"])
    find_element(id: "app.wl.oscar.sandbox:id/editText1").send_keys(dice["n1"])
    find_element(id: "app.wl.oscar.sandbox:id/editText2").send_keys(dice["n2"])
    find_element(id: "app.wl.oscar.sandbox:id/editText3").send_keys(dice["n3"])
    find_element(id: "app.wl.oscar.sandbox:id/editText4").send_keys(dice["n4"])
    find_element(id: "app.wl.oscar.sandbox:id/editText5").send_keys(dice["n5"])
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
