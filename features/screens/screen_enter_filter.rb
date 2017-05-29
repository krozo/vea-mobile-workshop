class ScreenEnterFilter
    def initialize(driver)
        @driver = driver
        @filter_save_button = Element.new(:id, 'save_filter', @driver)
    end

    def visible?
        @filter_save_button.visible?
    end

    def enter_save_button
        @filter_save_button.click
    end
end