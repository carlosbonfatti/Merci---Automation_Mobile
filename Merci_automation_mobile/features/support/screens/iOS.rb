class IOSScreens
  attr_accessor :login, :logo

  def initialize
    #instanciando as classes e deixandos as como variaveis globais
    @login = LoginScreen.new
    @home = HomeScreen.new
  end
end
