class ScreenEnterFilter
    def initialize(driver)
        @driver = driver
        @filter_save_button = Element.new(:id, 'save_filter', @driver)
        @filter_name = Element.new(:id, 'param_filter_name', @driver)
        @filter_left_parameter = Element.new(:id, 'left_param', @driver)
        @filter_right_parameter = Element.new(:id, 'right_param', @driver)
    end

    def visible?
        @filter_save_button.visible?
    end

    def enter_filter_name(variable, type)
        if type == 'name'   
            @filter_name.send_keys variable 
        elsif type == 'price'
            @filter_left_parameter.click
            @filter_left_parameter.send_keys variable[0]
            @filter_right_parameter.click
            @filter_right_parameter.send_keys variable[1]
        elsif type == 'area'

        end
    end

    def enter_save_button
        @filter_save_button.click
    end
end