class ScreenFilter
    def initialize(driver)
        @driver = driver

        @filter_page = Element.new(:xpath, '//android.widget.TextView[contains(@text, "Meklēšanas filtri")]', @driver)
    end

    def visible?
        @filter_page.visible?
    end




end