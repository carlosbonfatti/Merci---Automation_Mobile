class DroidScreens
  attr_accessor :login, :logo

  def initialize
    #instanciando as classes e deixandos as como variaveis globais
    @login = LoginScreen.new
    @logo = LogoScreen.new
  end
end
