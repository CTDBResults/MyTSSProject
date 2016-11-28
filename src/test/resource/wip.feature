Feature: Some feature

  @wip
  Scenario Outline: DCSSP-67 : As a user I want to view my account’s financial history so that I can review the account's transactions over a period of time
    Given I want to login to portal "<PortalName>"
    And I enter then details as
      | Fields        | Value      |
      | UserNameInput | <UserName> |
      | PasswordInput | <Password> |
    And I hit Enter
    And I check I am on "HomePage" page
    Then "<Item>" is displayed as "<ItemName>"
      | Item  | ItemName        |
      | item2 | Usage           |
      | item3 | Billing History |
      | item4 | Payments        |
      | item6 | Accounts        |
      | item8 | Settings        |
      | item9 | Sign Out        |
      | item9 | Lodgements      |
    And I click on "Payroll Tax"
    And I check I am on "Lodgement Payroll Return Form" page
    Then I see "Lodge Payroll Tax Return" displayed
    Then I see "All Fields are mandatory except where marked "optional"" displayed

    Examples: 
      | PortalName | UserNameField | PasswordField | UserName | Password  |
      | TSS        | UserNameInput | PasswordInput | bob      | dbresults |
