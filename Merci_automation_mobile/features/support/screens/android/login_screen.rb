class LoginScreen
  attr_accessor :input_cpf, :input_phone, :btn_continue,
                :input_sms, :input_password, :btn_forgot_password

  def initialize
    @input_cpf = { xpath: './/android.widget.EditText[@text="Seu CPF"]' }
    @input_phone = { xpath: './/android.widget.EditText[@text="Telefone com DDD"]' }
    @btn_continue = { id: 'buttonContinue' }
    @input_sms = 'editText'
    @input_password = { xpath: './/android.widget.EditText[@text="Senha"]' }
    @btn_forgot_password = { id: 'forgotPwdButton' }
  end

  def fill_sms
    6.times { |index| find_element(:id, "#{@input_sms}#{index}").send_keys(index + 1) }
  end

  def scroll_screen
    swipe(
      start_x: 20,
      start_y: 1000,
      end_x: 20,
      end_y: 500,
      duration: 500
    ).perform
  end
end
