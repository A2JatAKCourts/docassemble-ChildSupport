@NewCase
Feature: User paths
# 2026-08-14

@row23
Scenario:  row #23
  Given I start the interview at "child_support.yml"
    And I get to the question id "download child support" with this data:
    | var                    | value | trigger | 
    | wants_action_plan      | True  |         | 
    | existing_case          | none  |         | 
    | paternity              | True  |         | 
    | ask_court_or_cssd      | cssd  |         | 
    | ak_patience_assembling | True  |         | 
    And I take a screenshot
    And I should see the phrase "Your Action Plan in 4 Steps"  
    And I should see the phrase "Step 1: Find out who counts as your child’s legal parents"
    And I should see the phrase "Step 2: Learn about the Alaska Child Support Enforcement Division (CSED)"
    And I should see the phrase "Step 3: Learn about child support"
    And I should see the phrase "Step 4: Get more information or help"
    And I download "child_support_action_plan.pdf"

@row24
Scenario:  row #24
  Given I start the interview at "child_support.yml"
    And I get to the question id "download child support" with this data:
    | var                             | value | trigger | 
    | wants_action_plan               | True  |         | 
    | existing_case                   | none  |         | 
    | paternity                       | True  |         | 
    | ask_court_or_cssd               | court |         | 
    | parents_married                 | True  |         | 
    | general_information_about_forms | True  |         | 
    | number_of_children              | one   |         | 
    | interim_motion                  | wait  |         | 
    | ak_patience_assembling          | True  |         | 
    And I take a screenshot
    And I should see the phrase "Your Action Plan in 7 Steps"
    And I should see the phrase "Step 1: Find out who counts as your child’s legal parents"
    And I should see the phrase "Step 2: Start a court case"
    And I should see the phrase "Step 3: Learn about child support"
    And I should see the phrase "Step 4: Fill out the Child Support Guidelines Affidavit"
    And I should see the phrase "Step 5: Figure out your child support schedule"
    And I should see the phrase "Step 6: Fill out the Shared Custody Support Calculation"
    And I should see the phrase "Step 7: Get more information or help"
    And I download "child_support_action_plan.pdf"

@row25  
Scenario:  row #25
  Given I start the interview at "child_support.yml"
    And I get to the question id "download child support" with this data:
    | var                             | value   | trigger | 
    | wants_action_plan               | True    |         | 
    | existing_case                   | none    |         | 
    | paternity                       | True    |         | 
    | ask_court_or_cssd               | both    |         | 
    | parents_married                 | False   |         | 
    | general_information_about_forms | True    |         | 
    | number_of_children              | one     |         | 
    | interim_motion                  | ask     |         | 
    | filling_manner                  | paper   |         | 
    | filing_method                   | efiling |         | 
    | other_party_exempt              | no      |         | 
    | ak_patience_assembling          | True    |         | 
    And I take a screenshot
    And I should see the phrase "Your Action Plan in 13 Steps"  
    And I should see the phrase "Step 1: Find out who counts as your child’s legal parents"
    And I should see the phrase "Step 2: Learn about the Alaska Child Support Enforcement Division (CSED)"
    And I should see the phrase "Step 3: Start a court case"
    And I should see the phrase "Step 4: Learn about child support"
    And I should see the phrase "Step 5: Ask for interim child support"
    And I should see the phrase "Step 6: Fill out the Child Support Guidelines Affidavit"
    And I should see the phrase "Step 7: Figure out your child support schedule"
    And I should see the phrase "Step 8: Fill out the Shared Custody Support Calculation"
    And I should see the phrase "Step 9: Sign if you use paper forms or do not use TrueFiling"
    And I should see the phrase "Step 10: File your Motion for Interim Child Support"
    And I should see the phrase "Step 11: Serve the other parent"
    And I should see the phrase "Step 12: What to expect after you file your Motion for Interim Child Support"
    And I should see the phrase "Step 13: Get more information or help"
    And I download "child_support_action_plan.pdf"  

@row26
Scenario:  #26
  Given I start the interview at "child_support.yml"
    And I get to the question id "download child support" with this data:
    | var                             | value         | trigger | 
    | wants_action_plan               | True          |         | 
    | existing_case                   | none          |         | 
    | paternity                       | True          |         | 
    | ask_court_or_cssd               | both          |         | 
    | parents_married                 | False         |         | 
    | general_information_about_forms | True          |         | 
    | number_of_children              | more than one |         | 
    | interim_motion                  | wait          |         | 
    | ak_patience_assembling          | True          |         | 
    And I take a screenshot
    And I should see the phrase "Your Action Plan in 8 Steps"  
    And I should see the phrase "Step 1: Find out who counts as your child’s legal parents"
    And I should see the phrase "Step 2: Learn about the Alaska Child Support Enforcement Division (CSED)"
    And I should see the phrase "Step 3: Start a court case"
    And I should see the phrase "Step 4: Learn about child support"
    And I should see the phrase "Step 5: Fill out the Child Support Guidelines Affidavit"
    And I should see the phrase "Step 6: Figure out your child support schedule"
    And I should see the phrase "Step 7: Fill out the form that matches your situation"
    And I should see the phrase "Step 8: Get more information or help"
    And I download "child_support_action_plan.pdf"

@row27
Scenario: #27
  Given I start the interview at "child_support.yml"
    And I get to the question id "download child support" with this data:
    | var                             | value          | trigger | 
    | wants_action_plan               | True           |         | 
    | existing_case                   | none           |         | 
    | paternity                       | True           |         | 
    | ask_court_or_cssd               | court          |         | 
    | parents_married                 | True           |         | 
    | general_information_about_forms | True           |         | 
    | number_of_children              | more than one  |         | 
    | interim_motion                  | ask            |         | 
    | filling_manner                  | electronically |         | 
    | filing_method                   | dunno          |         | 
    | other_party_exempt              | yes            |         | 
    | other_party_enter_email         | None           |         | 
    | ak_patience_assembling          | True           |         | 
    And I take a screenshot
    And I should see the phrase "Your Action Plan in 12 Steps"  
    And I should see the phrase "Step 1: Find out who counts as your child’s legal parents"
    And I should see the phrase "Step 2: Start a court case"
    And I should see the phrase "Step 3: Learn about child support"
    And I should see the phrase "Step 4: Ask for interim child support"
    And I should see the phrase "Step 5: Fill out the Child Support Guidelines Affidavit"
    And I should see the phrase "Step 6: Figure out your child support schedule"
    And I should see the phrase "Step 7: Fill out the form that matches your situation"
    And I should see the phrase "Step 8: Sign if you use paper forms or do not use TrueFiling"
    And I should see the phrase "Step 9: File your Motion for Interim Child Support"
    And I should see the phrase "Step 10: Serve the other parent"
    And I should see the phrase "Step 11: What to expect after you file your Motion for Interim Child Support"
    And I should see the phrase "Step 12: Get more information or help"
    And I download "child_support_action_plan.pdf"  

@row28
Scenario:  #28
  Given I start the interview at "child_support.yml"
    And I get to the question id "download child support" with this data:
    | var                             | value | trigger | 
    | wants_action_plan               | True  |         | 
    | existing_case                   | none  |         | 
    | paternity                       | True  |         | 
    | ask_court_or_cssd               | both  |         | 
    | parents_married                 | True  |         | 
    | general_information_about_forms | False |         | 
    | interim_motion                  | wait  |         | 
    | ak_patience_assembling          | True  |         | 
    And I take a screenshot
    And I should see the phrase "Your Action Plan in 5 Steps"  
    And I should see the phrase "Step 1: Find out who counts as your child’s legal parents"
    And I should see the phrase "Step 2: Learn about the Alaska Child Support Enforcement Division (CSED)"  
    And I should see the phrase "Step 3: Start a court case"
    And I should see the phrase "Step 4: Learn about child support"
    And I should see the phrase "Step 5: Get more information or help"
    And I download "child_support_action_plan.pdf"

@row29
Scenario:  #29
  Given I start the interview at "child_support.yml"
    And I get to the question id "download child support" with this data:
    | var                             | value   | trigger | 
    | wants_action_plan               | True    |         | 
    | existing_case                   | none    |         | 
    | paternity                       | True    |         | 
    | ask_court_or_cssd               | court   |         | 
    | parents_married                 | False   |         | 
    | general_information_about_forms | False   |         | 
    | number_of_children              | one     |         | 
    | interim_motion                  | ask     |         | 
    | filling_manner                  | paper   |         | 
    | filing_method                   | efiling |         | 
    | other_party_exempt              | no      |         | 
    | ak_patience_assembling          | True    |         | 
    And I take a screenshot
    And I should see the phrase "Your Action Plan in 12 Steps"
    And I should see the phrase "Step 1: Find out who counts as your child’s legal parents"
    And I should see the phrase "Step 2: Start a court case"
    And I should see the phrase "Step 3: Learn about child support"
    And I should see the phrase "Step 4: Ask for interim child support"
    And I should see the phrase "Step 5: Fill out the Child Support Guidelines Affidavit"
    And I should see the phrase "Step 6: Figure out your child support schedule"
    And I should see the phrase "Step 7: Fill out the Shared Custody Support Calculation"
    And I should see the phrase "Step 8: Sign if you use paper forms or do not use TrueFiling"
    And I should see the phrase "Step 9: File your Motion for Interim Child Support"
    And I should see the phrase "Step 10: Serve the other parent"
    And I should see the phrase "Step 11: What to expect after you file your Motion for Interim Child Support"
    And I should see the phrase "Step 12: Get more information or help"
    And I download "child_support_action_plan.pdf"

@row30
Scenario:  row #30
  Given I start the interview at "child_support.yml"
    And I get to the question id "download child support" with this data:
    | var                             | value          | trigger | 
    | wants_action_plan               | True           |         | 
    | existing_case                   | none           |         | 
    | paternity                       | True           |         | 
    | ask_court_or_cssd               | both           |         | 
    | parents_married                 | False          |         | 
    | general_information_about_forms | False          |         | 
    | number_of_children              | more than one  |         | 
    | interim_motion                  | ask            |         | 
    | filling_manner                  | electronically |         | 
    | filing_method                   | efiling        |         | 
    | other_party_exempt              | yes            |         | 
    | other_party_enter_email         | True           |         | 
    | ak_patience_assembling          | True           |         | 
    And I take a screenshot
    And I should see the phrase "Your Action Plan in 12 Steps"  
    And I should see the phrase "Step 1: Find out who counts as your child’s legal parents"
    And I should see the phrase "Step 2: Learn about the Alaska Child Support Enforcement Division (CSED)"
    And I should see the phrase "Step 3: Start a court case"
    And I should see the phrase "Step 4: Learn about child support"
    And I should see the phrase "Step 5: Ask for interim child support"
    And I should see the phrase "Step 6: Fill out the Child Support Guidelines Affidavit"
    And I should see the phrase "Step 7: Figure out your child support schedule"
    And I should see the phrase "Step 8: Fill out the form that matches your situation"
    And I should see the phrase "Step 9: File your Motion for Interim Child Support"
    And I should see the phrase "Step 10: Serve the other parent"
    And I should see the phrase "Step 11: What to expect after you file your Motion for Interim Child Support"
    And I should see the phrase "Step 12: Get more information or help"
    And I download "child_support_action_plan.pdf"  

Scenario:  row #56
  Given I start the interview at "child_support.yml"
    And I get to the question id "download child support" with this data:
    | var                    | value   | trigger | 
    | wants_action_plan      | True    |         | 
    | existing_case          | unknown |         | 
    | after_courtview        | none    |         | 
    | paternity              | True    |         | 
    | ask_court_or_cssd      | cssd    |         | 
    | ak_patience_assembling | True    |         | 
    And I take a screenshot
    And I should see the phrase "Your Action Plan in 4 Steps"  
    And I should see the phrase "Step 1: Find out who counts as your child’s legal parents"
    And I should see the phrase "Step 2: Learn about the Alaska Child Support Enforcement Division (CSED)"
    And I should see the phrase "Step 3: Learn about child support"
    And I should see the phrase "Step 4: Get more information or help"
    And I download "child_support_action_plan.pdf"

@row57
Scenario:  row #57
  Given I start the interview at "child_support.yml"
    And I get to the question id "download child support" with this data:
    | var                             | value   | trigger | 
    | wants_action_plan               | True    |         | 
    | existing_case                   | unknown |         | 
    | after_courtview                 | none    |         | 
    | paternity                       | True    |         | 
    | ask_court_or_cssd               | court   |         | 
    | parents_married                 | False   |         | 
    | general_information_about_forms | True    |         | 
    | number_of_children              | one     |         | 
    | interim_motion                  | wait    |         | 
    | ak_patience_assembling          | True    |         | 
    And I take a screenshot
    And I should see the phrase "Your Action Plan in 7 Steps"  
    And I should see the phrase "Step 1: Find out who counts as your child’s legal parents"
    And I should see the phrase "Step 2: Start a court case"
    And I should see the phrase "Step 3: Learn about child support"
    And I should see the phrase "Step 4: Fill out the Child Support Guidelines Affidavit"
    And I should see the phrase "Step 5: Figure out your child support schedule"
    And I should see the phrase "Step 6: Fill out the Shared Custody Support Calculation"
    And I should see the phrase "Step 7: Get more information or help"
    And I download "child_support_action_plan.pdf"

Scenario:  row #64
  Given I start the interview at "child_support.yml"
    And I get to the question id "download child support" with this data:
    | var                    | value   | trigger | 
    | wants_action_plan      | True    |         | 
    | existing_case          | unknown |         | 
    | after_courtview        | none    |         | 
    | paternity              | False   |         | 
    | ask_court_or_cssd      | cssd    |         | 
    | ak_patience_assembling | True    |         | 
    And I take a screenshot
    And I should see the phrase "Your Action Plan in 3 Steps"  
    And I should see the phrase "Step 1: Learn about the Alaska Child Support Enforcement Division (CSED)"
    And I should see the phrase "Step 2: Learn about child support"
    And I should see the phrase "Step 3: Get more information or help"
    And I download "child_support_action_plan.pdf"

@row65
Scenario:  row #65
  Given I start the interview at "child_support.yml"
    And I get to the question id "download child support" with this data:
    | var                             | value   | trigger | 
    | wants_action_plan               | True    |         | 
    | existing_case                   | unknown |         | 
    | after_courtview                 | none    |         | 
    | paternity                       | False   |         | 
    | ask_court_or_cssd               | both    |         | 
    | parents_married                 | False   |         | 
    | general_information_about_forms | True    |         | 
    | number_of_children              | one     |         | 
    | interim_motion                  | wait    |         | 
    | ak_patience_assembling          | True    |         | 
    And I take a screenshot
    And I should see the phrase "Your Action Plan in 7 Steps"  
    And I should see the phrase "Step 1: Learn about the Alaska Child Support Enforcement Division (CSED)"
    And I should see the phrase "Step 2: Start a court case"
    And I should see the phrase "Step 3: Learn about child support"
    And I should see the phrase "Step 4: Fill out the Child Support Guidelines Affidavit"
    And I should see the phrase "Step 5: Figure out your child support schedule"
    And I should see the phrase "Step 6: Fill out the Shared Custody Support Calculation"
    And I should see the phrase "Step 7: Get more information or help"
    And I download "child_support_action_plan.pdf"

@row66
Scenario:  row #66
  Given I start the interview at "child_support.yml"
    And I get to the question id "download child support" with this data:
    | var                             | value             | trigger | 
    | wants_action_plan               | True              |         | 
    | existing_case                   | unknown           |         | 
    | after_courtview                 | none              |         | 
    | paternity                       | False             |         | 
    | ask_court_or_cssd               | both              |         | 
    | parents_married                 | False             |         | 
    | general_information_about_forms | True              |         | 
    | number_of_children              | one               |         | 
    | interim_motion                  | ask               |         | 
    | filling_manner                  | electronically    |         | 
    | filing_method                   | mail or in person |         | 
    | other_party_exempt              | yes               |         | 
    | other_party_enter_email         | False             |         | 
    | ak_patience_assembling          | True              |         | 
    And I take a screenshot
    And I should see the phrase "Your Action Plan in 12 Steps"
    And I should see the phrase "Step 1: Learn about the Alaska Child Support Enforcement Division (CSED)"
    And I should see the phrase "Step 2: Start a court case"  
    And I should see the phrase "Step 3: Learn about child support"
    And I should see the phrase "Step 4: Ask for interim child support"
    And I should see the phrase "Step 5: Fill out the Child Support Guidelines Affidavit"
    And I should see the phrase "Step 6: Figure out your child support schedule"
    And I should see the phrase "Step 7: Fill out the Shared Custody Support Calculation"
    And I should see the phrase "Step 8: Sign if you use paper forms or do not use TrueFiling"
    And I should see the phrase "Step 9: File your Motion for Interim Child Support"
    And I should see the phrase "Step 10: Serve the other parent"
    And I should see the phrase "Step 11: What to expect after you file your Motion for Interim Child Support"
    And I should see the phrase "Step 12: Get more information or help"
    And I download "child_support_action_plan.pdf"  

@row67
Scenario:  row #67
  Given I start the interview at "child_support.yml"
    And I get to the question id "download child support" with this data:
    | var                             | value         | trigger | 
    | wants_action_plan               | True          |         | 
    | existing_case                   | unknown       |         | 
    | after_courtview                 | none          |         | 
    | paternity                       | False         |         | 
    | ask_court_or_cssd               | both          |         | 
    | parents_married                 | False         |         | 
    | general_information_about_forms | True          |         | 
    | number_of_children              | more than one |         | 
    | interim_motion                  | wait          |         | 
    | ak_patience_assembling          | True          |         | 
    And I take a screenshot
    And I should see the phrase "Your Action Plan in 7 Steps"
    And I should see the phrase "Step 1: Learn about the Alaska Child Support Enforcement Division (CSED)"
    And I should see the phrase "Step 2: Start a court case"
    And I should see the phrase "Step 3: Learn about child support"
    And I should see the phrase "Step 4: Fill out the Child Support Guidelines Affidavit"
    And I should see the phrase "Step 5: Figure out your child support schedule"
    And I should see the phrase "Step 6 Fill out the form that matches your situation"
    And I should see the phrase "Step 7: Get more information or help"
    And I download "child_support_action_plan.pdf"

@row68
Scenario:  row #68
  Given I start the interview at "child_support.yml"
    And I get to the question id "download child support" with this data:
    | var                             | value          | trigger | 
    | wants_action_plan               | True           |         | 
    | existing_case                   | unknown        |         | 
    | after_courtview                 | none           |         | 
    | paternity                       | False          |         | 
    | ask_court_or_cssd               | court          |         | 
    | parents_married                 | True           |         | 
    | general_information_about_forms | True           |         | 
    | number_of_children              | more than one  |         | 
    | interim_motion                  | ask            |         | 
    | filling_manner                  | electronically |         | 
    | filing_method                   | dunno          |         | 
    | other_party_exempt              | yes            |         | 
    | other_party_enter_email         | None           |         | 
    | ak_patience_assembling          | True           |         | 
    And I take a screenshot
    And I should see the phrase "Your Action Plan in 11 Steps"
    And I should see the phrase "Step 1: Start a court case"
    And I should see the phrase "Step 2: Learn about child support"
    And I should see the phrase "Step 3: Ask for interim child support"
    And I should see the phrase "Step 4: Fill out the Child Support Guidelines Affidavit"
    And I should see the phrase "Step 5: Figure out your child support schedule"
    And I should see the phrase "Step 6: Fill out the form that matches your situation"
    And I should see the phrase "Step 7: Sign if you use paper forms or do not use TrueFiling"
    And I should see the phrase "Step 8: File your Motion for Interim Child Support"
    And I should see the phrase "Step 9: Serve the other parent"
    And I should see the phrase "Step 10: What to expect after you file your Motion for Interim Child Support"
    And I should see the phrase "Step 11: Get more information or help"
    And I download "child_support_action_plan.pdf"  

@row69
Scenario:  row #69
  Given I start the interview at "child_support.yml"
    And I get to the question id "download child support" with this data:
    | var                             | value   | trigger | 
    | wants_action_plan               | True    |         | 
    | existing_case                   | unknown |         | 
    | after_courtview                 | none    |         | 
    | paternity                       | False   |         | 
    | ask_court_or_cssd               | both    |         | 
    | parents_married                 | True    |         | 
    | general_information_about_forms | False   |         | 
    | interim_motion                  | wait    |         | 
    | ak_patience_assembling          | True    |         | 
    And I take a screenshot
    And I should see the phrase "Your Action Plan in 4 Steps"
    And I should see the phrase "Step 1: Learn about the Alaska Child Support Enforcement Division (CSED)"
    And I should see the phrase "Step 2: Start a court case"
    And I should see the phrase "Step 3: Learn about child support"
    And I should see the phrase "Step 4: Get more information or help"
    And I download "child_support_action_plan.pdf"

@row70
Scenario:  row #70
  Given I start the interview at "child_support.yml"
    And I get to the question id "download child support" with this data:
    | var                             | value   | trigger | 
    | wants_action_plan               | True    |         | 
    | existing_case                   | unknown |         | 
    | after_courtview                 | none    |         | 
    | paternity                       | False   |         | 
    | ask_court_or_cssd               | court   |         | 
    | parents_married                 | False   |         | 
    | general_information_about_forms | False   |         | 
    | number_of_children              | one     |         | 
    | interim_motion                  | ask     |         | 
    | filling_manner                  | paper   |         | 
    | filing_method                   | efiling |         | 
    | other_party_exempt              | no      |         | 
    | ak_patience_assembling          | True    |         | 
    And I take a screenshot
    And I should see the phrase "Your Action Plan in 11 Steps"
    And I should see the phrase "Step 1: Start a court case"  
    And I should see the phrase "Step 2: Learn about child support"
    And I should see the phrase "Step 3: Ask for interim child support"
    And I should see the phrase "Step 4: Fill out the Child Support Guidelines Affidavit"
    And I should see the phrase "Step 5: Figure out your child support schedule"
    And I should see the phrase "Step 6: Fill out the Shared Custody Support Calculation"
    And I should see the phrase "Step 7: Sign if you use paper forms or do not use TrueFiling"
    And I should see the phrase "Step 8: File your Motion for Interim Child Support"
    And I should see the phrase "Step 9: Serve the other parent"
    And I should see the phrase "Step 10: What to expect after you file your Motion for Interim Child Support"
    And I should see the phrase "Step 11: Get more information or help"
    And I download "child_support_action_plan.pdf"  

@row71
Scenario:  row #71
  Given I start the interview at "child_support.yml"
    And I get to the question id "download child support" with this data:
    | var                             | value          | trigger | 
    | wants_action_plan               | True           |         | 
    | existing_case                   | unknown        |         | 
    | after_courtview                 | none           |         | 
    | paternity                       | False          |         | 
    | ask_court_or_cssd               | both           |         | 
    | parents_married                 | False          |         | 
    | general_information_about_forms | False          |         | 
    | number_of_children              | more than one  |         | 
    | interim_motion                  | ask            |         | 
    | filling_manner                  | electronically |         | 
    | filing_method                   | efiling        |         | 
    | other_party_exempt              | yes            |         | 
    | other_party_enter_email         | True           |         | 
    | ak_patience_assembling          | True           |         | 
    And I take a screenshot
    And I should see the phrase "Your Action Plan in 11 Steps"
    And I should see the phrase "Step 1: Learn about the Alaska Child Support Enforcement Division (CSED)"
    And I should see the phrase "Step 2: Start a court case" 
    And I should see the phrase "Step 3: Learn about child support"
    And I should see the phrase "Step 4: Ask for interim child support"
    And I should see the phrase "Step 5: Fill out the Child Support Guidelines Affidavit"
    And I should see the phrase "Step 6: Figure out your child support schedule"
    And I should see the phrase "Step 7: Fill out the form that matches your situation"
    And I should see the phrase "Step 8: File your Motion for Interim Child Support"
    And I should see the phrase "Step 9: Serve the other parent"
    And I should see the phrase "Step 10: What to expect after you file your Motion for Interim Child Support"
    And I should see the phrase "Step 11: Get more information or help"
    And I download "child_support_action_plan.pdf"  
