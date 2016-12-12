Feature: Some feature


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
      # defect | item2 | Monthly Return                                                                              |
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
    And I click on "Next"
    And "<Item>" is displayed as "<ItemName>"
      | Item  | ItemName                                              |
      | item2 | Bonuses And Commissions                               |
      | item2 | Allowances                                            |
      | item2 | Directors                                             |
      | item2 | Eligible termination payments                         |
      | item2 | Value Of Benefits                                     |
      | item2 | Share/options value                                   |
      | item2 | Service contracts                                     |
      | item9 | Superannuation                                        |
      | item9 | Other taxable payments                                |
      | item9 | ACT taxable wages                                     |
      | item9 | Total Amount                                          |
      | item9 | Are you claiming the ACT proportion of the threshold? |
    And I click on "Next"
    And "<Item>" is displayed as "<ItemName>"
      | Item  | ItemName           |
      #defect  | item1 | Australia-wide Group Wages Incl. |
      # defect | item1 | Group ACT Wages      |
      | item1 | Tax-free threshold |
      | item1 | Taxable Wages      |
      | item1 | Tax Payable        |
    And I click on "Next"
    And "<Item>" is displayed as "<ItemName>"
      | Item  | ItemName                                                                     |
      | item2 | Declaration                                                                  |
      | item2 | full name of person authorised to act for the legal entity                   |
      | item2 | name of legal entity                                                         |
      | item2 | Phone Number                                                                 |
      | item2 | Email Address                                                                |
      | item2 | I declare this information is true and correct to the best of my knownledge. |
    And I click on "Next"
    And "<Item>" is displayed as "<ItemName>"
      | Item  | ItemName                                              |
      | item2 | Client Number                                         |
      | item2 | Employer Status                                       |
      | item2 | Reporting Period                                      |
      | item2 | Claiming Tax-Free Threshold                           |
      | item2 | I have checked and confirm these details are correct. |
    And I click on "Submit"
    And I check I am on "LodgePayroll Step2 Confirm" page
    And I click on "wt21"
    And I click on "wt17"

    Examples: 
      | PortalName | UserNameField | PasswordField | UserName | Password  |
      | TSS        | UserNameInput | PasswordInput | bob      | dbresults |
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
 

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
    Then "<Item>" is displayed as "<ItemName>"
      | Item  | ItemName                                                                                    |
      | item2 | Lodge Payroll Tax Return                                                                    |
      | item2 | All Fields are mandatory except where marked                                                |
      | item2 | Return Type                                                                                 |
      | item2 | Monthly Return                                                                              |
      | item2 | Annual Reconciliation                                                                       |
      | item2 | Tax Payer Details                                                                           |
      | item2 | Client Reference Number (CRN)                                                               |
      | item2 | Australian Business Number (ABN)                                                            |
      | item9 | Payroll Tax Group Number                                                                    |
      | item9 | Year Of Return                                                                              |
      | item9 | Month Of Return                                                                             |
      | item9 | Organizational Name                                                                         |
      | item9 | Current Employer Status                                                                     |
      | item9 | Independent employer (non-group) lodging for itself                                         |
      | item9 | Designated group employer for a group and lodging for itself                                |
      | item9 | Designated group employer and lodging a joint return for itself and other ACT group members |
      | item9 | Member of a group lodging for itself                                                        |
    And I click on "ACT Wages Paid or Taxable "
    And "<Item>" is displayed as "<ItemName>"
      | Item  | ItemName                                              |
      | item2 | Salaries And Wages                                    |
      | item2 | Bonuses And Commissions                               |
      | item2 | Directors                                             |
      | item2 | Eligible termination payments                         |
      | item2 | Value Of BenefitsTax Payer Details                    |
      | item2 | Share/options value                                   |
      | item2 | Service contracts                                     |
      | item9 | Superannuation                                        |
      | item9 | Other taxable payments                                |
      | item9 | ACT taxable wages                                     |
      | item9 | Are you claiming the ACT proportion of the threshold? |
    And "<Item>" is displayed as "<ItemName>"
      | Item  | ItemName                                                                     |
      | item2 | Declaration                                                                  |
      | item2 | I (full name of person authorised to act for the legal entity)               |
      | item2 | Of (name of legal entity)                                                    |
      | item2 | Phone Number                                                                 |
      | item2 | Email Address                                                                |
      | item2 | I declare this information is true and correct to the best of my knownledge. |
    And "<Item>" is displayed as "<ItemName>"
      | Item  | ItemName                                              |
      | item2 | Client Number                                         |
      | item2 | Employer Status                                       |
      | item2 | Reporting Period                                      |
      | item2 | Claiming Tax-Free Threshold                           |
      | item2 | I have checked and confirm these details are correct. |

    Examples: 
      | PortalName | UserNameField | PasswordField | UserName | Password  |
      | TSS        | UserNameInput | PasswordInput | bob      | dbresults |

  
 Scenario Outline: DTSP-240 : As an end user, I want to be able to download the Tax Lodgement or Registration forms in PDF format, so that I can keep a record of my lodgements
    Given I want to login to portal "<PortalName>"
    And I enter then details as
      | Fields        | Value      |
      | UserNameInput | <UserName> |
      | PasswordInput | <Password> |
    And I hit Enter
    And I check I am on "HomePage" page
    And I click on "Payroll Tax"
    #  And I click on "<ButtonName1>"
    And I enter then details as
      | Fields | Value       |
      | ABN    | 12345678901 |
    And I select "<DropDownValue1>" from "<DropDownField>"
    And I select "<DropDownValue2>" from "<DropDownField2>"
    And I click on "Next"
    And I enter then details as
      | Fields                      | Value |
      | SalariesAndWages            |  1000 |
      | BonusesAndCommissions       |  1000 |
      | Allowances                  |  1000 |
      | DirectorsFees               |  1000 |
      | EligibleTerminationPayments |  1000 |
      | ValueOfBenefits             |  1000 |
      | ShareValue                  |  1000 |
      | ServiceContracts            |  1000 |
      | Superannuation              |  1000 |
      | OtherTaxablePayments        |  1000 |
      | ACT                         |     0 |
    And I click on "wt90"
    And I see "<Message>" displayed
    And I click on "ACTWagesPaidNext"
    And I enter then details as
      | Fields         | Value |
      | AustralianWide | 15000 |
    And I click on "MontlyReturnNext"
    And I enter then details as
      | Fields          | Value           |
      | PersonFullName  | Vance           |
      | LegalEntityName | DB R            |
      | PhoneNumber     | (6143 585 74 90 |
      | EmailAddress    | vance@db.com    |
    And I click on "DeclarationNext"
  #  And I click on "ConfirmForSubmission" checkbox
    And I click on "Submit"
    Then I check I am on "LodgePayroll_Step2_Confirm" page
    And I click on "wt21"

    Examples: 
      | PortalName | UserNameField | PasswordField | UserName | Password  | ButtonName1 | DropDownValue1 | DropDownField | DropDownValue2 | DropDownField2 | Message                                    |
      | TSS        | UserNameInput | PasswordInput | bob      | dbresults | TypeMonthly |           2016 | YearOfReturn  | February       | MonthOfReturn  | Your changes have been successfully saved. |
