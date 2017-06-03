class ScreenFilter
    attr_accessor :tmp_name
    def initialize(driver)
        @driver = driver

        @filter_page = Element.new(:xpath, '//android.widget.TextView[contains(@text, "Meklēšanas filtri")]', @driver)
        @fitler_names = Element.new(:xpath, '//android.widget.TextView[contains(@id, "row_filter_name")]', @driver).find_elements
    end

    def visible?
        @filter_page.visible?
    end

    def open_filter_editor(name_to_remove)
        # if $driver.find_elements(:xpath, '//android.widget.TextView[contains(@id, "row_filter_name")]') == name
        #     $driver.find_element(:xpath, '//android.widget.TextView[contains(@id, "row_filter_name")]').click
        # end

        # idx = 0
        # @fitler_names.each do |name|
        #     if name == name_to_remove
        #         @fitler_names[idx].click
        #         break
        #     end
        #     idx = idx + 1
        # end

        # if $driver.find_elements(:xpath, '//android.widget.TextView[contains(@id, "row_filter_name")]').length > 0
            $driver.find_element(:xpath, '//android.widget.TextView[contains(@text,"name or... or, bla?")]').click
        # end
    end

    def remove_and_check(name)
        open_filter_editor(name)
        check_filter_exist(name)
    end


    # def remove_filter(name_to_remove)
    #     # @fitler_names.each do |name|
    #     #     if name == name_to_remove
    #     #         @fitler_names[name].click
    #     #     end
    #     # end
    #     if $driver.find_elements(:xpath, '//android.widget.TextView[contains(@id, "row_filter_name")]') == name_to_remove
    #         $driver.find_element(:xpath, '//android.widget.TextView[contains(@id, "row_filter_name")]').click
    #     end
    # end

    def check_filter_exist(name)
        if $driver.find_elements(:xpath, '//android.widget.TextView[contains(@text,"name or... or, bla?")]').size == 0
            print 'Removed!!!  '
        else
            $driver.find_element(:xpath, '//android.widget.TextView[contains(@text,"name or... or, bla?")]').visible?
        end
    end








end