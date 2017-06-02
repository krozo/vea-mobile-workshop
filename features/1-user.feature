Feature: 1. Filter feature

  # Scenario: Add filter
  #   Given I am on intro screen
  #   When I create property filter

# Exercise Nr.1 => Done
Scenario: Validate Slideshow
  Given I am on intro screen
  Given Validate first Slideshow screen
  Then Swipe to second Slideshow screen
  Given Validate second Slideshow screen
  Then Swipe to third Slideshow screen
  Given Validate third Slideshow screen

# Exercise Nr.2 => Done
Scenario: Validate Side Menu page
  Given I am on intro screen
  Given Validate first Slideshow screen
  Then Click “UZ APLIKĀCIJU” button
  Given Validate application landing screen
  Then Click Side menu button
  Given Validate Side menu
  Then Click “Paziņojumi”
  Given Validate Notifications page
  Then Click Side menu button
  Given Validate Side menu
  Then Click “Favorīti”
  Given Validate Favorites page
  Then Click Side menu button
  Given Validate Side menu
  Then Click “Meklēšanas filtri”
  Given Validate Filter page
  Then Click Side menu button
  Given Validate Side menu
  Then Click “Izveidot filtru”
  Given Validate application landing screen

# Exercise Nr.3
# Scenario: Delete existing filter from filter page
#   Given I am on intro screen
#   Given Validate first Slideshow screen
#   Then Click “UZ APLIKĀCIJU” button
#   Given Validate application landing screen
#   Then Click Side menu button
#   Given Validate Side menu
#   Then Click “Meklēšanas filtri”
#   Given Validate Filter page
#   And Open existing filter
#   Then Click Delete button
#   Given Validate Filter page and check if filter is removed

# Exercise Nr.4 => Done
Scenario: “Nekustamie īpašumi” filter - negative
  # Given I am on intro screen
  Given Launch application
  Then Navigate to create “Nekustamie īpašumi” filter parameters page
  Then Leave all parameter fields empty
  Then Press filter save button
  Given Parameter page visible

# Exercise Nr.5 => Done
Scenario: “Nekustamie īpašumi” filter - positive
  # Given I am on intro screen
  Given Launch application
  Then Navigate to create “Nekustamie īpašumi” filter parameters page
  Then Fill in filter Name and Price fields with valid data
  Then Press filter save button
  Given Validate Filter page