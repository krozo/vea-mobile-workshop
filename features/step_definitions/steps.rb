# These are the 'step definitions' which Cucumber uses to implement features.
#
# Each step starts with a regular expression matching the step you write in
# your feature description.  Any variables are parsed out and passed to the
# step block.
#
# The instructions in the step are then executed with those variables.
#
# In this example, we're using rspec's assertions to test that things are happening,
# but you can use any ruby code you want in the steps.
#
# The '$driver' object is the appium_lib driver, set up in the cucumber/support/env.rb
# file, which is a convenient place to put it as we're likely to use it often.
# This is a different use to most of the examples;  Cucumber steps are instances
# of `Object`, and extending Object with Appium methods (through
# `promote_appium_methods`) is a bad idea.
#
# For more on step definitions, check out the documentation at
# https://github.com/cucumber/cucumber/wiki/Step-Definitions
#
# For more on rspec assertions, check out
# https://www.relishapp.com/rspec/rspec-expectations/docs



# Exercises: 1.1
Given /^I am on intro screen$/ do
    # if @screens.screen_intro.visible_slide('global') == true
        if $driver.find_elements(:xpath, '//android.widget.Button[contains(@text, "OK")]').size > 0
            $driver.find_element(:xpath, '//android.widget.Button[contains(@text, "OK")]').click
        end
    # elsif @screens.screen_create_filter.visible? == true
    #     print 'ff'
    # end
    @screens.screen_intro.visible_slide('global')
end
# Exercises: 4.1 un 5.1
Given /^Launch application$/ do
    # @screens.screen_intro.visible_slide('global')
    @screens.screen_create_filter.visible?
end
# Exercises: 1.2, 1.3, 1.4, 1.5, 1.6
Given /^Validate first Slideshow screen$/ do
    @screens.screen_intro.visible_slide('first')
end

Then /^Swipe to second Slideshow screen$/ do
    @screens.screen_intro.swipe('right')
end

Given /^Validate second Slideshow screen$/ do
    @screens.screen_intro.visible_slide('second')
end

Then /^Swipe to third Slideshow screen$/ do
    @screens.screen_intro.swipe('right')
end

Given /^Validate third Slideshow screen$/ do
    @screens.screen_intro.visible_slide('third')
end

# Exercise Nr.2
Then /^Click “UZ APLIKĀCIJU” button$/ do
    # @screens.screen_intro.close_intro
    @tests.test_add_filter.close_intro
end

Given /^Validate application landing screen$/ do
    @screens.screen_create_filter.visible?
end

Then /^Click Side menu button$/ do
    @screens.screen_side_menu.open_side_menu
end

Given /^Validate Side menu$/ do
    @screens.screen_side_menu.visible?
end

Given /^Click “Paziņojumi”$/ do
    @screens.screen_side_menu.click_notification
end

Given /^Validate Notifications page$/ do
    @screens.screen_notification.visible?
end

Given /^Click “Favorīti”$/ do
    @screens.screen_side_menu.click_favorite
end

Given /^Validate Favorites page$/ do
    @screens.screen_favorites.visible?
end

Then /^Click “Meklēšanas filtri”$/ do
    @screens.screen_side_menu.click_search_filter
end

Then /^Click “Izveidot filtru”$/ do
    @screens.screen_side_menu.click_create_filter
end

# Exercise Nr.3
And /^Open existing filter$/ do
    
end

Then /^Click Delete button$/ do
    
end

Given /^Validate Filter page and check if filter is removed$/ do
    
end

# Exercises: 4.2 un 5.2
Then /^Navigate to create “Nekustamie īpašumi” filter parameters page$/ do
    # @tests.test_add_filter.close_intro
    @tests.test_add_filter.open_filter_parameter_screen
end
   
# Given /^I create property filter$/ do
#     @tests.test_add_filter.close_intro
#     @tests.test_add_filter.open_filter_parameter_screen
# end
# Exercise: 4.3
Then /^Leave all parameter fields empty$/ do
    @screens.screen_enter_filter.visible?
    @tests.test_add_filter.test_enter_parameters('negative')
end
# Exercise: 5.3
Then /^Fill in filter Name and Price fields with valid data$/ do
    @screens.screen_enter_filter.visible?
    @tests.test_add_filter.test_enter_parameters('positive')
end
   
# Exercise: 4.4 and 5.4
Then /^Press filter save button$/ do
    @screens.screen_enter_filter.enter_save_button
end
   
# Exercise: 4.5
Given /^Parameter page visible$/ do
    @screens.screen_enter_filter.visible?
end  
# Exercise: 5.5 
Given /^Validate Filter page$/ do
    @screens.screen_filter_page.visible?
end
   