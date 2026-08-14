@joint_petitioners
Feature: User paths
# 2026-08-14

@row17
Scenario: Row #17 
  Given I start the interview at "child_support.yml"
    And I get to the question id "download child support" with this data:
    | var                             | value | trigger | 
    | wants_action_plan               | True  |         | 
    | existing_case                   | open  |         | 
    | user_role_in_case               | joint |         | 
    | interim_motion                  | wait  |         | 
    | general_information_about_forms | True  |         | 
    | number_of_children              | one   |         | 
    | ak_patience_assembling          | True  |         | 
    And I take a screenshot
    And I should see the phrase "Your Action Plan in 5 Steps"
    And I should see the phrase "Step 1: Learn about child support"
    And I should see the phrase "Step 2: Fill out the Child Support Guidelines Affidavit"
    And I should see the phrase "Step 3: Figure out your child support schedule"
    And I should see the phrase "Step 4: Fill out the Shared Custody Support Calculation"
    And I should see the phrase "Step 5: Get more information or help"
    And I download "child_support_action_plan.pdf"

@row55
Scenario: Row #55 
  Given I start the interview at "child_support.yml"
    And I get to the question id "download child support" with this data:
    | var                             | value             | trigger | 
    | wants_action_plan               | True              |         | 
    | existing_case                   | unknown           |         | 
    | after_courtview                 | open              |         | 
    | user_role_in_case               | joint             |         | 
    | interim_motion                  | ask               |         | 
    | general_information_about_forms | True              |         | 
    | number_of_children              | more than one     |         | 
    | filling_manner                  | electronically    |         | 
    | filing_method                   | mail or in person |         | 
    | other_party_exempt              | yes               |         | 
    | other_party_enter_email         | False             |         | 
    | ak_patience_assembling          | True              |         | 
    And I take a screenshot
    And I should see the phrase "Your Action Plan in 10 Steps"
    And I should see the phrase "Step 1: Learn about child support"
    And I should see the phrase "Step 2: Ask for interim child support"
    And I should see the phrase "Step 3: Fill out the Child Support Guidelines Affidavit"
    And I should see the phrase "Step 4: Figure out your child support schedule"
    And I should see the phrase "Step 5: Fill out the form that matches your situation"
    And I should see the phrase "Step 6: Sign if you use paper forms or do not use TrueFiling"
    And I should see the phrase "Step 7: File your Motion for Interim Child Support"
    And I should see the phrase "Step 8: Serve the other parent"
    And I should see the phrase "Step 9: What to expect after you file your Motion for Interim Child Support"
    And I should see the phrase "Step 10: Get more information or help"
    And I download "child_support_action_plan.pdf"
