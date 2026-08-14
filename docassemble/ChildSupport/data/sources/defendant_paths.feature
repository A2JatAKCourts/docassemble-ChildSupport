@DefendantsClosedAndUnknown
Feature: User paths
# 2026-08-14

Scenario: Row #2 defendants
  Given I start the interview at "child_support.yml"
    And I get to the question id "download child support" with this data:
    | var                    | value     | trigger | 
    | wants_action_plan      | True      |         | 
    | existing_case          | open      |         | 
    | case_type              | divorce   |         | 
    | user_role_in_case      | defendant |         | 
    | ak_patience_assembling | True      |         | 
    And I take a screenshot
    And I should see the phrase "Your Action Plan in 3 Steps"
    And I should see the phrase "Step 1: Learn about child support"
    And I should see the phrase "Step 2: Respond to your divorce case"
    And I should see the phrase "Step 3: Get more information or help"
    And I download "child_support_action_plan.pdf"

Scenario: Row #16 case closed
  Given I start the interview at "child_support.yml"
    And I get to the question id "download child support" with this data:
    | var                    | value  | trigger | 
    | wants_action_plan      | True   |         | 
    | existing_case          | open   |         | 
    | user_role_in_case      | closed |         | 
    | ak_patience_assembling | True   |         | 
    And I take a screenshot
    And I should see the phrase "Your Action Plan in 3 Steps"
    And I should see the phrase "Step 1: Learn about child support"
    And I should see the phrase "Step 2: Decide if you want to change your order"
    And I should see the phrase "Step 3: Get more information or help"
    And I download "child_support_action_plan.pdf"

@UnknownCase
Scenario: row #39
  Given I start the interview at "child_support.yml"
    And I get to the question id "download child support" with this data:
    | var                    | value   | trigger | 
    | wants_action_plan      | True    |         | 
    | existing_case          | unknown |         | 
    | after_courtview        | unknown |         | 
    | ak_patience_assembling | True    |         | 
    And I take a screenshot
    And I should see the phrase "Your Action Plan in 3 Steps"
    And I should see the phrase "Step 1: Learn about child support"
    And I should see the phrase "Step 2: Find out if you have a court case"
    And I should see the phrase "Step 3: Get more information or help"
    And I download "child_support_action_plan.pdf"

Scenario: row #40
  Given I start the interview at "child_support.yml"
    And I get to the question id "download child support" with this data:
    | var                    | value   | trigger | 
    | wants_action_plan      | True    |         | 
    | existing_case          | unknown |         | 
    | after_courtview        | open    |         | 
    | user_role_in_case      | closed  |         | 
    | ak_patience_assembling | True    |         | 
    And I take a screenshot
    And I should see the phrase "Your Action Plan in 3 Steps"
    And I should see the phrase "Step 1: Learn about child support"
    And I should see the phrase "Step 2: Decide if you want to change your order"
    And I should see the phrase "Step 3: Get more information or help"
    And I download "child_support_action_plan.pdf"

Scenario: # 41
  Given I start the interview at "child_support.yml"
    And I get to the question id "download child support" with this data:
    | var                    | value     | trigger | 
    | wants_action_plan      | True      |         | 
    | existing_case          | unknown   |         | 
    | after_courtview        | open      |         | 
    | case_type              | custody   |         | 
    | user_role_in_case      | defendant |         | 
    | ak_patience_assembling | True      |         | 
    And I take a screenshot
    And I should see the phrase "Your Action Plan in 3 Steps"
    And I should see the phrase "Step 1: Learn about child support"
    And I should see the phrase "Step 2: Respond to your custody case"
    And I should see the phrase "Step 3: Get more information or help"
    And I download "child_support_action_plan.pdf"
