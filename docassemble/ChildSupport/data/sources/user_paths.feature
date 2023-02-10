Feature: User paths

Scenario: Just answer Yes to and first option to every question
  Given I start the interview at "child_support.yml"
  And I get to the question id "download child support" with this data:
    | var | value | trigger |
    | wants_action_plan | True |  |
    | case_type | divorce |  |
    | existing_case | open |  |
    | general_information_about_forms | True |  |
    | interim_motion | wait |  |
    | need_to_respond | True |  |
    | number_of_children | one |  |
    | user_role_in_case | defendant |  |
  And I take a screenshot
  And I should see the phrase "Your Personal Action Plan in 7 Steps"
  And I should see the phrase "Learn about child support"
  And I should see the phrase "Respond to your divorce case"
  And I should see the phrase "Fill out the Child Support Guidelines Affidavit"
  And I should see the phrase "Figure out your child support schedule"
  And I should see the phrase "Fill out the Shared Custody Support Calculation"
  And I should see the phrase "File and serve your forms"
  And I should see the phrase "Get more information or help"
  
Scenario: Just answer Yes to and first option to every question
  Given I start the interview at "child_support.yml"
  And I get to the question id "download child support" with this data:
    | var | value | trigger |
    | wants_action_plan | False |  |
  And I take a screenshot
  And I should see the phrase "Try another Guided Assistant"