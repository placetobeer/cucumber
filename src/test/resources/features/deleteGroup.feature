Feature: Delete Group
  As a owner of a group
  I want to delete that group

  Scenario Outline: Delete group successfully, while owner has membership in other group
    Given I am logged in
    When I select the <to delete group> group
    Then It should show the hubpage of <group name> group
    And I click on the edit group button
    Then It should show the edit group site with the delete button
    When I click on the delete button
    Then It will show the "are you shure to delete" dialog popup
    When I click on the ok button
    Then It should show the "group was deleted" message
    When I click on the ok button
    Then It should close the popup
    And It should show the placeholder hubpage


    Examples:
      | to delete group |
      | study-buddies   |