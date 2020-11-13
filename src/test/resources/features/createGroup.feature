Feature: Create group
  As a USER
  I want to create a group with at least two members

  Scenario Outline: create group successfully
    Given I am logged in and open the create group site
    When I fill in the <group name> field
    And I click on the create button
    Then the app should create a new group with the input values
    And send the data to the backend
    And return to the hubpage

    Examples:
      | group name | email |
      | study-buddies | project.placetobeer@gmail.com |

  Scenario Outline: user tries to add member which is already in group
    Given I am logged in and open the create group site
    When I fill in the <group name> field
    And I fill in the <email> field
    And I click on the add to group button
    And I fill in the <email> field the same email address as before
    And I click on the add to group button
    Then error message of the member being already in the group

    Examples:
      | group name | email |
      | study-buddies | project.placetobeer@gmail.com |