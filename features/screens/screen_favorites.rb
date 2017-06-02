class ScreenFavorites
    def initialize(driver)
        @driver = driver
        @favorites_page = Element.new(:xpath, '//android.widget.TextView[contains(@text, "Favorīti")]', @driver)
        @side_menu_button = Element.new(:xpath, '//android.widget.ImageButton[contains(@content-desc, "Menu opened")]', @driver)
    end

    def visible?
        @favorites_page.visible?
        @side_menu_button.visible?
    end
end
