class HomeScreen
  attr_reader :menu, :btn_add_account, :loading, :btn_permission, :btn_access_app

  def initialize
    # @btn_menu = EL_ANDROID["btn_menu"]
    # @btn_add_account = EL_ANDROID["btn_add_account"]
    # @loading = { id: "progressBarBig" }
    @btn_permission = { id: "" }
    @btn_access_login_screen = { id: "" }
  end

  def access_login_screen
    find_element(@btn_access_login_screen).click
  end

  def access_permission
    # BaseHelpers.click_id(@btn_permission)
    find_element(@btn_permission).click
  end

  def access_menu
    find_element(xpath: @btn_menu).click
  end

  def scroll_screen
    swipe(
      start_x: 700,
      start_y: 1100,
      end_x: 700,
      end_y: 500,
      duration: 500,
    ).perform
  end
end
