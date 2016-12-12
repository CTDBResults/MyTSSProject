Feature: Some feature

  @wip
  Scenario Outline: DTSP-252 : Create generic Login screen
    DTSP-277 : As an end user, I want to be able to view the left navigation panel so that I can quickly access the functions I need (Phase 1)
    DTSP-28 : As an end user, I want to be able to submit a Monthly Payroll Tax Return Form, so that my Payroll Tax Return is lodged

    Given I want to login to portal "<PortalName>"
    And I enter then details as
      | Fields        | Value      |
      | UserNameInput | <UserName> |
      | PasswordInput | <Password> |
    And I hit Enter
    And I check I am on "HomePage" page
    Then "<Item>" is displayed as "<ItemName>"
      | Item  | ItemName   |
      | item9 | Lodgements |
    And I click on "Payroll Tax"
    And I check I am on "Payroll Lodgement Form" page
    Then "<Item>" is displayed as "<ItemName>"
      | Item  | ItemName                                                                                    |
      | item2 | Lodge Payroll Tax Return                                                                    |
      | item2 | All Fields are mandatory except where marked                                                |
      | item2 | Return Type                                                                                 |
      | item2 | Monthly Return                                                                              |
      | item2 | Annual Reconciliation                                                                       |
      | item2 | Tax Payer Details                                                                           |
      | item2 | Client Reference Number                                                                     |
      | item2 | Australian Business Number                                                                  |
      | item9 | Payroll Tax Group Number                                                                    |
      | item9 | Year of Return                                                                              |
      | item9 | Month of Return                                                                             |
      | item9 | Organisational Name                                                                         |
      | item9 | Current Employer Status                                                                     |
      | item9 | Independent employer (non-group) lodging for itself                                         |
      | item9 | Designated group employer and lodging a joint return for itself and other ACT group members |
      | item9 | Member of a group lodging for itself                                                        |
      | Button | Cancel                                                                                      |
      | Button | SaveAndExit                                                                                 |
      | Button | Save                                                                                        |
      | Button | Next                                                                                        |

    Examples: 
      | PortalName | UserNameField | PasswordField | UserName | Password   |
      | TSS        | UserNameInput | PasswordInput | bob      | dbresults |
