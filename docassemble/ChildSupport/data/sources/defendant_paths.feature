@DefendantsClosedAndUnknown
Feature: User paths

Scenario: Row #2 defendants
  Given I start the interview at "child_support.yml"
    And I get to the question id "download child support" with this data:
    | var               | value     | trigger | 
    | wants_action_plan | True      |         | 
    | existing_case     | open      |         | 
    | case_type         | divorce   |         | 
    | user_role_in_case | defendant |         | 
    And I take a screenshot
    And I should see the phrase "Your Action Plan in 3 Steps"
    And I should see the phrase "Learn about child support"
    And I should see the phrase "Respond to your divorce case"
    And I should see the phrase "Get more information or help"
    And I download "child_support_action_plan.pdf"

Scenario: Row #16 case closed
  Given I start the interview at "child_support.yml"
    And I get to the question id "download child support" with this data:
    | var               | value  | trigger | 
    | wants_action_plan | True   |         | 
    | existing_case     | open   |         | 
    | user_role_in_case | closed |         | 
    And I take a screenshot
    And I should see the phrase "Your Action Plan in 3 Steps"
    And I should see the phrase "Learn about child support"
    And I should see the phrase "Decide if you want to change your order"
    And I should see the phrase "Get more information or help"
    And I download "child_support_action_plan.pdf"

@UnknownCase
Scenario: row #39
  Given I start the interview at "child_support.yml"
    And I get to the question id "download child support" with this data:
    | var               | value   | trigger | 
    | wants_action_plan | True    |         | 
    | existing_case     | unknown |         | 
    | after_courtview   | unknown |         | 
    And I take a screenshot
    And I should see the phrase "Your Action Plan in 3 Steps"
    And I should see the phrase "Learn about child support"
    And I should see the phrase "Find out if you have a court case"
    And I should see the phrase "Get more information or help"
    And I download "child_support_action_plan.pdf"

Scenario: row #40
  Given I start the interview at "child_support.yml"
    And I get to the question id "download child support" with this data:
    | var               | value   | trigger | 
    | wants_action_plan | True    |         | 
    | existing_case     | unknown |         | 
    | after_courtview   | open    |         | 
    | user_role_in_case | closed  |         | 
    And I take a screenshot
    And I should see the phrase "Your Action Plan in 3 Steps"
    And I should see the phrase "Learn about child support"
    And I should see the phrase "Decide if you want to change your order"
    And I should see the phrase "Get more information or help"
    And I download "child_support_action_plan.pdf"

Scenario: # 41
  Given I start the interview at "child_support.yml"
    And I get to the question id "download child support" with this data:
    | var               | value     | trigger | 
    | wants_action_plan | True      |         | 
    | existing_case     | unknown   |         | 
    | after_courtview   | open      |         | 
    | case_type         | custody   |         | 
    | user_role_in_case | defendant |         | 
    And I take a screenshot
    And I should see the phrase "Your Action Plan in 3 Steps"
    And I should see the phrase "Learn about child support"
    And I should see the phrase "Respond to your custody case"
    And I should see the phrase "Get more information or help"
    And I download "child_support_action_plan.pdf"