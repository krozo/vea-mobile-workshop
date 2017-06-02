class ScreenNotification
    def initialize(driver)
        @driver = driver
        @notification_page = Element.new(:xpath, '//android.widget.TextView[contains(@text, "Paziņojumi")]', @driver)
        @side_menu_button = Element.new(:xpath, '//android.widget.ImageButton[contains(@content-desc, "Menu opened")]', @driver)
    end

    def visible?
        @notification_page.visible?
        @side_menu_button.visible?
    end
end
