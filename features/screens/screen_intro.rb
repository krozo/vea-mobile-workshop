class ScreenIntro
    def initialize(driver)
        @driver = driver
        @button_to_app = Element.new(:id, 'close_intro', @driver)

        @first_slide_text = Element.new(:xpath, '//android.widget.TextView[contains(@text, "Atlasi svarīgāko!")]', @driver)
        @second_slide_text = Element.new(:xpath, '//android.widget.TextView[contains(@text, "Veic vajadzīgās izmaiņas!")]', @driver)
        @third_slide_text = Element.new(:xpath, '//android.widget.TextView[contains(@text, "Saņem paziņojumus!")]', @driver)
    end

    def swipe(type)
        if type == 'left'
            @driver.swipe(:start_x => 0.05, :delta_x => 0.90, :duration => 500)
        elsif type == 'right'
            @driver.swipe(:start_x => 0.95, :delta_x => -0.9, :duration => 500)
        end
    end




    def visible?(type)
        if type == 'global'
            @button_to_app.visible?
        elsif type == 'first'
            @first_slide_text.visible?
        elsif type == 'second'
            @second_slide_text.visible?
        elsif type == 'third'
            @third_slide_text.visible?
        end
    end

    def close_intro
        @button_to_app.click
    end
end