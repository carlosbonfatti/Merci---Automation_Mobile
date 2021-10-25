Dado('que o usuário acesse a tela de login') do
  binding.pry 
  @screen.home.access_permission
  @screen.home.login_access
end

