Feature: User paths

Scenario: joint petitioners do not want interim order have one child row #17
  Given I start the interview at "child_support.yml"
  And I get to the question id "download child support" with this data:
    | var | value | trigger |
    | wants_action_plan | True |  |
    | existing_case | open |  |
    | user_role_in_case | joint |  |
    | interim_motion | wait |  |
    | general_information_about_forms | True |  |
    | number_of_children | one |  |
  And I take a screenshot
  And I should see the phrase "Your Personal Action Plan in 6 Steps"
  And I should see the phrase "Learn about child support"
  And I should see the phrase "Fill out the Child Support Guidelines Affidavit"
  And I should see the phrase "Figure out your child support schedule"
  And I should see the phrase "Fill out the Shared Custody Support Calculation"
  And I should see the phrase "File and serve your forms"
  And I should see the phrase "Get more information or help"
  
Scenario: joint petitioners do not want interim order have one child row #51
  Given I start the interview at "child_support.yml"
  And I get to the question id "download child support" with this data:
    | var | value | trigger |
    | wants_action_plan | True |  |
    | existing_case | unknown |  |
    | after_courtview | open |  |
    | user_role_in_case | joint |  |
    | interim_motion | wait |  |
    | general_information_about_forms | True |  |
    | number_of_children | one |  |
  And I take a screenshot
  And I should see the phrase "Your Personal Action Plan in 6 Steps"
  And I should see the phrase "Learn about child support"
  And I should see the phrase "Fill out the Child Support Guidelines Affidavit"
  And I should see the phrase "Figure out your child support schedule"
  And I should see the phrase "Fill out the Shared Custody Support Calculation"
  And I should see the phrase "File and serve your forms"
  And I should see the phrase "Get more information or help"