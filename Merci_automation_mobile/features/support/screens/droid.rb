class DroidScreens
  attr_accessor :login, :home
 
  def initialize
    @login = LoginScreen.new
    @home = HomeScreen.new
  end
end
