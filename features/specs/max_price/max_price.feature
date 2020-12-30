Feature: Website shows products at their maximum prices
  Scenario: Choose maximum price from home page
    Given I am on home page
    And I choose some maximum product price
    When I click in this price category
    Then I should only see products no more expensive than the choosen price