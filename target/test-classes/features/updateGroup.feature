Feature: Update Group
  As a MEMBER
  I want to update a group entity I am a member of

  Scenario Outline: change name
    Given I opened page "groupSettings"
    And I am logged in as a member of the group
    When I click button "editGroupName"
    And I enter <new name> in the input "changeName"
    When I press enter or click button "apply"
    Then the group should have name <new name>

    Examples:
      | new name |
      | name2 	 |


  Scenario Outline: add member successfully
    Given I opened page "groupSettings"
    And I am logged in as a member of the group
    When I click button "addMember"
    When I enter <email address> in the input "newMember"
    And I click button "confirmAddMember"
    Then <email address> receives an invitation email (for this group entity)

    Examples:
      | email address 				  |
      | project.placetobeer@gmail.com |

  Scenario Outline: add member with admin role
    Given I opened page "groupSettings"
    And I am logged in as a member of the group
    When I click button "addMember"
    When I enter <email address> in the input "newMember"
    And I check the checkbox "addAsAdmin"
    And I click button "confirmAddMember"
    Then <email address> receives an invitation email (for this group entity)

    Examples:
      | email address 				  |
      | project.placetobeer@gmail.com |