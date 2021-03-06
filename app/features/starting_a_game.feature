Feature: Starting a game
As a player
In order to start a game
I want to be able to register and play

Scenario: Sign up
Given I am on the homepage
And I fill the "name" form
And I press the "submit" button
Then I should receive a "Welcome" with my chosen name

Scenario: Make a move
Given I am on the homepage after choosing a name
And I click on the "Play" link
When I fill the form with "rock"
Then I should receive a "result"