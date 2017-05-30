Feature: 1. Filter feature

  # Scenario: Add filter
  #   Given I am on intro screen
  #   When I create property filter

# Exercise Nr.1
Scenario: Validate Slideshow
  Given I am on intro screen
  Given Validate first Slideshow screen
  Then Swipe to second Slideshow screen
  Given Validate second Slideshow screen
  Then Swipe to third Slideshow screen
  Given Validate third Slideshow screen

# Exercise Nr.4
Scenario: “Nekustamie īpašumi” filter - negative
  Given I am on intro screen
  Then Navigate to create “Nekustamie īpašumi” filter parameters page
  And Leave all parameter fields empty
  Then Press filter save button
  # Given Parameter page visible

# Exercise Nr.5
# Scenario: “Nekustamie īpašumi” filter - positive
#   Given I am on intro screen
#   Then Navigate to create “Nekustamie īpašumi” filter parameters page
#   And Fill in filter Name (Nosaukums) and Price (Cena) fields with valid data
#   Then Press filter save button
#   Given Validate Filter page