class ScreenSideMenu
    def initialize(driver)
        @driver = driver
        @side_menu_test = Element.new(:xpath, '//android.widget.ImageView[contains(@content-desc, "NotifyUs")]', @driver)
        @side_menu_button = Element.new(:xpath, '//android.widget.ImageButton[contains(@content-desc, "Menu opened")]', @driver)

        @create_filter = Element.new(:xpath, '//android.widget.TextView[contains(@text, "Izveidot filtru")]', @driver)
        @search_filter = Element.new(:xpath, '//android.widget.TextView[contains(@text, "Meklēšanas filtri")]', @driver)
        @favorite = Element.new(:xpath, '//android.widget.TextView[contains(@text, "Favorīti")]', @driver)
        @notification = Element.new(:xpath, '//android.widget.TextView[contains(@text, "Paziņojumi")]', @driver)
    end

    def visible?
        @side_menu_test.visible?
    end

    def open_side_menu
        @side_menu_button.click
    end

    def click_create_filter
        @create_filter.click
    end

    def click_search_filter
        @search_filter.click
    end

    def click_favorite
        @favorite.click
    end

    def click_notification
        @notification.click
    end




end
