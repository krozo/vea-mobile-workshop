class ScreenEnterFilter
    def initialize(driver)
        @driver = driver
        @filter_save_button = Element.new(:id, 'save_filter', @driver)
        @filter_name = Element.new(:id, 'param_filter_name', @driver)

        @filter_left_parameters = Element.new(:id, 'left_param', @driver).find_elements
        @filter_right_parameters = Element.new(:id, 'right_param', @driver).find_elements

    end

    def visible?
        @filter_save_button.visible?
    end

    def enter_filter_name(variable, type)
        if type == 'name'   
            @filter_name.send_keys variable 
        elsif type == 'price'
            idx = 0 # First left and right parameters is at 0 position
            setParametersToFilter(idx, variable)
        elsif type == 'area'
            idx = 1
            setParametersToFilter(idx, variable)
        end
    end

    def setParametersToFilter(idx, variable)
        if @filter_left_parameters.length >= idx && @filter_right_parameters.length >= idx
            @filter_left_parameters[idx].send_keys variable[0]
            @filter_right_parameters[idx].send_keys variable[1]
        end
    end

    def enter_save_button
        @filter_save_button.click
    end
end