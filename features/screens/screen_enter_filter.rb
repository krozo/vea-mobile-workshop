class ScreenEnterFilter
    def initialize(driver)
        @driver = driver
        @filter_save_button = Element.new(:id, 'save_filter', @driver)
        @filter_name = Element.new(:id, 'param_filter_name', @driver)
    end

    def visible?
        @filter_save_button.visible?
    end

    def enter_filter_name(name)   
        @filter_name.send_keys name 
    end

    def enter_save_button
        @filter_save_button.click
    end
end