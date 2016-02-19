Feature: Sign in

  Scenario: Show login form
    When the user visits profile page
    Then they should see sign in form

  Scenario: Unsuccessful signin
    Given a user visits the signin page
    When they submit invalid signin information
    Then they should see an error message

  Scenario: Successful signin
    Given a user visits the signin page
    And the user has an account
    When the user submits valid signin information
    Then they should see their profile page
    And they should see a logout link

