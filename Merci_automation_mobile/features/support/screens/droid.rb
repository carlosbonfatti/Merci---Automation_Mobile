class DroidScreens
  attr_accessor :login, :home

  def initialize
    #instanciando as classes e deixandos as como variaveis globais
    @login = LoginScreen.new
    @home = HomeScreen.new
  end
end
