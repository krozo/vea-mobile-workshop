Feature: 1. Filter feature

  # Scenario: Add filter
  #   Given I am on intro screen
  #   When I create property filter

Scenario: “Nekustamie īpašumi” filter - negative
  Given I am on intro screen
  Then Navigate to create “Nekustamie īpašumi” filter parameters page
  And Leave all parameter fields empty
  Then Press filter save button
  Given Parameter page visible

Scenario: “Nekustamie īpašumi” filter - positive
  Given I am on intro screen
  Then Navigate to create “Nekustamie īpašumi” filter parameters page
  And Fill in filter Name (Nosaukums) and Price (Cena) fields with valid data
  Then Press filter save button
  Given Validate Filter page