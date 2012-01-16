Feature: User accounts
  In order to interract with the site features
  As a site visitor
  I want to identify myself uniquely

  Scenario: Join the site, setting up an account
    When I go through the join process
    Then I should be on the user dashboard page

  Scenario: Manage profile
    Given I am logged in
    When I change my profile name to "Frank Jones"
    Then I should be on the user dashboard page
    And I should see "Welcome, Frank"

  Scenario: Returning user logging in
    Given there is a user "frankj" with password "abc123"
    When I log in with username "frankj" and password "abc123"
    Then I should be on the user dashboard page

  Scenario: Log out
    Given I am logged in
    When I go to the user dashboard page
    And I follow "Log out"
    Then I should be on the home page
