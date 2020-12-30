Feature: Follow

  Background: Login
    Given I have "valid credentials"
    And I do login

  Scenario: Followers List
    When I find a store that I like and follow it
    Then I must see my profile on the followers list

  Scenario: Followers Counter
    When I find a store that I like and follow it 
    Then the followers counter of this store must increase by one

  Scenario: Unfollow User
    When I unfollow a store that I used to like
    Then the followers counter of this store must decrease by one
    And I don't have to see my profile on the followers list
