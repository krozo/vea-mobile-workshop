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

# Uzd: 4.1 un 5.1
Given /^I am on intro screen$/ do
    if $driver.find_elements(:xpath, '//android.widget.Button[contains(@text, "OK")]').size > 0
        $driver.find_element(:xpath, '//android.widget.Button[contains(@text, "OK")]').click
    end
    @screens.screen_intro.visible?
end
# Uzd: 4.2 un 5.2
Then /^Navigate to create “Nekustamie īpašumi” filter parameters page$/ do

end
   
# Given /^I create property filter$/ do
#     @tests.test_add_filter.close_intro
#     @tests.test_add_filter.open_filter_parameter_screen
# end
# Uzd: 4.3
And /^Leave all parameter fields empty$/ do

end
# Uzd: 5.3
And /^Fill in filter Name (Nosaukums) and Price (Cena) fields with valid data$/ do

end
   
# Uzd: 4.4 un 5.4
Then /^Press filter save button$/ do

end
   
# Uzd: 4.5
Given /^Parameter page visible$/ do

end  
# Uzd: 5.1 
Given /^Validate Filter page$/ do

end
   