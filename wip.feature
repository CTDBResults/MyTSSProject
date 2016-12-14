Feature: Some feature

  @tss
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
      | Item   | ItemName                                                                                    |
      | item2  | Lodge Payroll Tax Return                                                                    |
      | item2  | All Fields are mandatory except where marked                                                |
      | item2  | Return Type                                                                                 |
      | item2  | Monthly Return                                                                              |
      | item2  | Annual Reconciliation                                                                       |
      | item2  | Tax Payer Details                                                                           |
      | item2  | Client Reference Number                                                                     |
      | item2  | Australian Business Number                                                                  |
      | item9  | Payroll Tax Group Number                                                                    |
      | item9  | Year of Return                                                                              |
      | item9  | Month of Return                                                                             |
      | item9  | Organisational Name                                                                         |
      | item9  | Current Employer Status                                                                     |
      | item9  | Independent employer (non-group) lodging for itself                                         |
      | item9  | Designated group employer and lodging a joint return for itself and other ACT group members |
      | item9  | Member of a group lodging for itself                                                        |
      | Button | Cancel                                                                                      |
      | Button | SaveAndExit                                                                                 |
      | Button | Save                                                                                        |
      | Button | Next                                                                                        |

    Examples: 
      | PortalName | UserNameField | PasswordField | UserName | Password  |
      | TSS        | UserNameInput | PasswordInput | bob      | dbresults |

  #@tss
  #Scenario Outline: DTSP-252 : As an end user, I want to be able to download the Tax Lodgement or Registration forms in PDF format, so that I can keep a record of my lodgements
    #						DTSP-192...?
    #						DTSP-227: As an end user, I want to be able to receive an email confirmation once I have submitted a form so that I have a record of the forms I have submitted
#
    #Given I want to login to portal "<PortalName>"
    #And I enter then details as
      #| Fields        | Value      |
      #| UserNameInput | <UserName> |
      #| PasswordInput | <Password> |
    #And I hit Enter
    #Then I click on "Payroll Tax"
    #And I click on "<IconName>"
    #Then I see text "<IconText>" displayed
    #Then I click on "Next"
    #And I click on "<IconName>"
    #Then I see text "<IconText>" displayed
    #Then I click on "ACTWagesPaidNext"
    #And I click on "<IconName>"
    #Then I see text "<IconText>" displayed
    #And I enter then details as
      #| Fields         | Value |
      #| AustralianWide |  1000 |
    #Then I click on "MonthlyReturnNext"
    #And I click on "<IconName>"
    #Then I see text "<IconText>" displayed
    #And I enter then details as
      #| Fields          | Value         |
      #| PersonFullName  | TEST          |
      #| LegalEntityName | TEST          |
      #| PhoneNumber     |   00000000000 |
      #| EmailAddress    | TEST@TEST.com |
    #Then I click on "DeclarationNext"
    #And I click on "<IconName>"
    #Then I see text "<IconText>" displayed
    #Then I click on "Submit"
    #Then I click on "wt20"
    #Then "<Item>" is displayed as "<ItemName>"
      #| Item  | ItemName                                                          |
      #| item2 | Your Monthly Payroll Tax Lodgement has been successfully submited |
    #Then I click on "wt13"
#
    #Examples: 
      #| PortalName | UserNameField | PasswordField | UserName | Password  | IconName                          | IconText              |
      #| TSS        | UserNameInput | PasswordInput | bob      | dbresults | fa fa-fw fa-question-circle fa-lg | PayrollTax_ReturnType |

  @tss_test
  Scenario Outline: DTSP-54 : As a DB Portal Administrator I want to search for a message so that I can quickly access the message I want to view
    Given I want to login to portal "<PortalName>"
    And I enter then details as
      | Fields        | Value      |
      | UserNameInput | <UserName> |
      | PasswordInput | <Password> |
    And I hit Enter
    Given I want to login to portal "MessageEdit"
    Then I see text "Feedback Message Text" displayed
    Then I see text "Feedback Msg Code" displayed
    Then I see text "Description" displayed
    And I enter then details as
      | Fields      | Value        |
      | SearchInput | AusWideWages |
    Then I click on "SearchBt"
    Then "<Item>" is displayed as "<ItemName>"
      | Item  | ItemName                                                                                   |
      | item2 | InvalidAusWideWages                                                                        |
      | item3 | Your Aus wide group wages (including ACT) must be equal to or greater than your ACT wages. |
    And I enter then details as
      | Fields      | Value   |
      | SearchInput | Success |
    Then I click on "SearchBt"
    Then "<Item>" is displayed as "<ItemName>"
      | Item  | ItemName                                   |
      | item2 | SuccessSaveForm                            |
      | item3 | Your changes have been successfully saved. |
    And I enter then details as
      | Fields      | Value   |
      | SearchInput | Invalid |
    Then I click on "SearchBt"
    Then "<Item>" is displayed as "<ItemName>"
      | Item  | ItemName             |
      | item2 | InvalidAusWideWages  |
      | item3 | InvalidGroupACTWages |
      | item4 | InvalidPhone         |
      | item5 | InvalidForm          |
      | item6 | InvalidABN           |

    Examples: 
      | PortalName | UserNameField | PasswordField | UserName | Password  |
      | TSS        | UserNameInput | PasswordInput | bob      | dbresults |

  #alt username: hemant.shori
  #alt password: USBcoffee1
  @tss_test
  Scenario Outline: DTSP-55 : As a DB Portal Administrator I want to edit a message's description so that I can customise the description for an organisation
    Given I want to login to portal "<PortalName>"
    And I enter then details as
      | Fields        | Value      |
      | UserNameInput | <UserName> |
      | PasswordInput | <Password> |
    And I hit Enter
    Given I want to login to portal "MessageEdit"
    Then I click on "Edit"
    Then "<Item>" is displayed as "<ItemName>"
      | Item   | ItemName          |
      | text1  | Feedback Msg Code |
      | text2  | Description       |
      | Button | Save              |
      | Button | Cancel            |
    Then I click on "Save"
    Then I click on "Edit"
    Then I click on "Cancel"
    Then I see "Are you sure?" displayed on popup and I click "OK"
    Then I click on "Edit"
    Then I select "<DropDownOption>" from "<DropDownName>"
    And I enter then details as
      | Fields           | Value |
      | Text_Description | TEST  |
    Then I click on "Save"
    Then I click on "Edit"
    Then I select "<DropDownOption>" from "<DropDownName>"
    And I enter then details as
      | Fields           | Value                                                                                      |
      | Text_Description | Your Aus wide group wages (including ACT) must be equal to or greater than your ACT wages. |
    Then I click on "Save"

    Examples: 
      | PortalName | UserNameField | PasswordField | UserName | Password  | DropDownName | DropDownOption |
      | TSS        | UserNameInput | PasswordInput | bob      | dbresults | FeedbackMsgText | InvalidAusWideWages |

  @tss_test
  Scenario Outline: DTSP-56 :As a DB Portal Administrator I want to add a new message so that required messages are displayed in the portal
    								DTSP-57 :As a DB Portal Administrator I want to delete a message so that I can remove messages no longer required

    Given I want to login to portal "<PortalName>"
    And I enter then details as
      | Fields        | Value      |
      | UserNameInput | <UserName> |
      | PasswordInput | <Password> |
    And I hit Enter
    Given I want to login to portal "MessageEdit"
    Then I click on "AddNew"
    Then "<Item>" is displayed as "<ItemName>"
      | Item   | ItemName          |
      | text1  | Feedback Msg Code |
      | text2	 | Description 			 |
      | Button | Save              |
      | Button | Cancel            |
    Then I see text "Description" displayed
    Then I click on "Cancel"
    Then I see "Are you sure?" displayed on popup and I click "OK"
    Then I click on "AddNew"
    Then I select "<DropDownOption>" from "<DropDownName>"
    And I enter then details as
      | Fields           | Value |
      | Text_Description | TEST  |
    Then I click on "Save"
    Then I click on "Delete"
    Then I see "<ErrorMessage>" displayed on popup and I click "OK"
    Then I click on "Delete"
    Then I see "<ErrorMessage>" displayed on popup and I click "Cancel"
    Then "<Item>" is displayed as "<ItemName>"
      | Item  | ItemName             |
      | text1 | InvalidAusWideWages  |
      | text2 | InvalidGroupACTWages |
      | text2 | InvalidPhone         |
      | text2 | InvalidForm          |
      | text2 | SuccessSaveForm      |
      | text2 | InvalidABN           |

    Examples: 
      | PortalName | UserNameField | PasswordField | UserName | Password  | ErrorMessage										 | DropDownName 	 | DropDownOption 		 |
      | TSS        | UserNameInput | PasswordInput | bob      | dbresults | Are you sure you want to delete? | FeedbackMsgText | InvalidAusWideWages |

  @tss
  Scenario Outline: DTSP-233: As a DB Portal Administrator, I want to be able to search/add/edit/remove the tool tips displayed on forms so that I can help the end user better understand the form field/s
    Given I want to login to portal "<PortalName>"
    And I enter then details as
      | Fields        | Value      |
      | UserNameInput | <UserName> |
      | PasswordInput | <Password> |
    And I hit Enter
    Given I want to login to portal "PageTexts"
    Then "<Item>" is displayed as "<ItemName>"
      | Item  | ItemName    |
      | item2 | Text Code   |
      | item4 | Is Active   |
    Then I see text "Description" displayed
      # check for search
    And I enter then details as 
      | Fields      | Value    |
      | SearchInput | Password |
      #w17 is search
    Then I click on "wt17"
    Then "<Item>" is displayed as "<ItemName>"
      | Item  | ItemName                  |
      | item2 | PasswordValidation        |
      | item2 | ResetPasswordExpiredLine2 |
      | item2 | ResetPasswordInvalidLine1 |
      | item2 | ForgotPasswordEmailLine3  |
      | item2 | ResetPasswordLine2        |
      | item2 | ResetPasswordInvalidLine2 |
      | item2 | ResetPasswordExpiredLine1 |
      | item2 | ForgotPasswordEmailLine2  |
      | item2 | ResetPasswordLine1        |
      | item2 | ForgotPasswordEmailLine1  |
    And I enter then details as
      | Fields | Value   |
      | SearchInput |  |
      #wt17 = search in mainpage, #wt30 = edit in mainpage
    Then I click on "wt17" 
    Then I click on "wt30" 
    # check for editing
    Then "<Item>" is displayed as "<ItemName>" 
      | Item  | ItemName    |
      | item2 | Text Code   |
      | item3 | Description |
      | item4 | Is Visible  |
    #wt21 = cancel in edit, wt31 = save in edit
    Then I click on "wt21"
    
    #edit a dummy description
    Then I click on "wt30"
    Then I click on "PageText_TextCode"
    Then I click on "RegistrationConfirmationLine1"
    And I enter then details as
      | Fields | Value   |
      | PageText_Description | TEST |
    Then I click on "wt31"
    #set the description back to normal
    Then I click on "wt30"
    Then I click on "PageText_TextCode"
    Then I click on "RegistrationConfirmationLine1"
    And I enter then details as
      | Fields | Value   |
      | PageText_Description | RegistrationConfirmationLine1 |
    Then I click on "wt31"
    
    # add a new message
    Then I click on "AddNew" 
    Then "<Item>" is displayed as "<ItemName>"
      | Item  | ItemName    |
      | item2 | Text Code   |
      | item3 | Description |
      | item4 | Is Visible  |
    Then I click on "wt21"
    Then I click on "AddNew"
    Then I click on "PageText_TextCode"
    Then I click on "RegistrationConfirmationLine1"
    And I enter then details as
      | Fields | Value   |
      | PageText_Description | RegistrationConfirmationLine1 |
    Then I click on "wt31"
    
    # now delete it
    # wt41 = delete, only works once page is refreshed
    Then I click on "wt41"
    Given I want to login to portal "PageTexts"

    Examples: 
      | PortalName | UserNameField | PasswordField | UserName | Password  |
      | TSS        | UserNameInput | PasswordInput | bob      | dbresults |
