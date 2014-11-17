Feature: In order to have some fun
  As an avid gamer
  In order to stay entertained
  I want to play Rock, Paper, Scissors

  Scenario: Registering the first player
    Given I am on the homepage
    When I register to play the game
    Then I should be asked to play against the AI or another user

  Scenario: Playing against another user
    Given I am playing against another user
    When I choose an option
    Then I should find out if I have won or not