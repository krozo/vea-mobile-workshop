class ScreenFilterEditPage
    def initialize(driver)
        @driver = driver


        @save_button = Element.new(:xpath, '//android.widget.TextView[contains(@id, "save_filter")]', @driver)
        @remove_button = Element.new(:xpath, '//android.widget.TextView[contains(@id, "delete_filter")]', @driver)
    end

    def visible?
        @save_button.visible?
    end

    def remove_filter
        @remove_button.click
        if $driver.find_elements(:xpath, '//android.widget.Button[contains(@text, "DZĒST")]').size > 0
            $driver.find_element(:xpath, '//android.widget.Button[contains(@text, "DZĒST")]').click
        end
    end




end