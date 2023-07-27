@plaintiffs
Feature: User paths

Scenario: Row #17
Â Â Given I start the interview at "child_support.yml"
  And I get to the question id "download child support" with this data:
    | var | value | trigger |
    | wants_action_plan | True |  |
    | existing_case | open |  |
    | user_role_in_case | plaintiff |  |
    | interim_motion | wait |  |
    | general_information_about_forms | True |  |
    | number_of_children | one |  |
  And I take a screenshot
  And I should see the phrase "Your Personal Action Plan in 5 Steps"
  And I should see the phrase "Learn about child support"
  And I should see the phrase "Fill out the Child Support Guidelines Affidavit"
  And I should see the phrase "Figure out your child support schedule"
  And I should see the phrase "Fill out the Shared Custody Support Calculation"
  And I should see the phrase "Get more information or help"
  And I download "child_support_action_plan.pdf"

Scenario: Row #18
Â Â Given I start the interview at "child_support.yml"
  And I get to the question id "download child support" with this data:
    | var | value | trigger |
    | wants_action_plan | True |  |
    | existing_case | open |  |
    | user_role_in_case | joint |  |
    | interim_motion | wait |  |
    | general_information_about_forms | True |  |
    | number_of_children | more than one |  |
  And I take a screenshot
  And I should see the phrase "Your Personal Action Plan in 5 Steps"
  And I should see the phrase "Learn about child support"
  And I should see the phrase "Fill out the Child Support Guidelines Affidavit"
  And I should see the phrase "Figure out your child support schedule"
  And I should see the phrase "Fill out the form that matches your situation"
  And I should see the phrase "Get more information or help"
  And I download "child_support_action_plan.pdf"
  
 Scenario: Row #19
Â Â Given I start the interview at "child_support.yml"
  And I get to the question id "download child support" with this data:
    | var | value | trigger |
    | wants_action_plan | True |  |
    | existing_case | open |  |
    | user_role_in_case | plaintiff |  |
    | interim_motion | wait |  |
    | general_information_about_forms | False |  |
  And I take a screenshot
  And I should see the phrase "Your Personal Action Plan in 2 Steps"
  And I should see the phrase "Learn about child support"
  And I should see the phrase "Get more information or help"
  And I download "child_support_action_plan.pdf"

Scenario: Row #20
Â Â Given I start the interview at "child_support.yml"
  And I get to the question id "download child support" with this data:
    | var | value | trigger |
    | wants_action_plan | True |  |
    | existing_case | open |  |
    | user_role_in_case | joint |  |
    | interim_motion | ask |  |
    | number_of_children | one |  |
  And I take a screenshot
  And I should see the phrase "Your Personal Action Plan in 10 Steps"
  And I should see the phrase "Learn about child support"
  And I should see the phrase "Ask for interim child support"
  And I should see the phrase "Fill out the Child Support Guidelines Affidavit"
  And I should see the phrase "Figure out your child support schedule"
  And I should see the phrase "Fill out the Shared Custody Support Calculation"
  And I should see the phrase "Fill out the Certificate of Service"
  And I should see the phrase "File your Motion for Interim Child Support"
  And I should see the phrase "Serve the other parent"
  And I should see the phrase "What to expect after you file"
  And I should see the phrase "Get more information or help"
  And I download "child_support_action_plan.pdf"

Scenario: Row #21
Â Â Given I start the interview at "child_support.yml"
  And I get to the question id "download child support" with this data:
    | var | value | trigger |
    | wants_action_plan | True |  |
    | existing_case | open |  |
    | user_role_in_case | plaintiff |  |
    | interim_motion | ask |  |
    | number_of_children | more than one |  |
  And I take a screenshot
  And I should see the phrase "Your Personal Action Plan in 10 Steps"
  And I should see the phrase "Learn about child support"
  And I should see the phrase "Ask for interim child support"
  And I should see the phrase "Fill out the Child Support Guidelines Affidavit"
  And I should see the phrase "Figure out your child support schedule"
  And I should see the phrase "Fill out the form that matches your situation"
  And I should see the phrase "Fill out the Certificate of Service"
  And I should see the phrase "File your Motion for Interim Child Support"
  And I should see the phrase "Serve the other parent"
  And I should see the phrase "What to expect after you file"
  And I should see the phrase "Get more information or help"
  And I download "child_support_action_plan.pdf" 
  
  
Scenario: Row #51 
Â Â Given I start the interview at "child_support.yml"
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
  And I should see the phrase "Your Personal Action Plan in 5 Steps"
  And I should see the phrase "Learn about child support"
  And I should see the phrase "Fill out the Child Support Guidelines Affidavit"
  And I should see the phrase "Figure out your child support schedule"
  And I should see the phrase "Fill out the Shared Custody Support Calculation"
  And I should see the phrase "Get more information or help"
  And I download "child_support_action_plan.pdf"

Scenario: Row #52
Â Â Given I start the interview at "child_support.yml"
  And I get to the question id "download child support" with this data:
    | var | value | trigger |
    | wants_action_plan | True |  |
    | existing_case | unknown |  |
    | after_courtview | open |  |
    | user_role_in_case | plaintiff |  |
    | interim_motion | wait |  |
    | general_information_about_forms | True |  |
    | number_of_children | more than one |  |
  And I take a screenshot
  And I should see the phrase "Your Personal Action Plan in 5 Steps"
  And I should see the phrase "Learn about child support"
  And I should see the phrase "Fill out the Child Support Guidelines Affidavit"
  And I should see the phrase "Figure out your child support schedule"
  And I should see the phrase "Fill out the form that matches your situation"
  And I should see the phrase "Get more information or help"
  And I download "child_support_action_plan.pdf"
  
 Scenario: Row #53
Â Â Given I start the interview at "child_support.yml"
  And I get to the question id "download child support" with this data:
    | var | value | trigger |
    | wants_action_plan | True |  |
    | existing_case | unknown |  |
    | after_courtview | open |  |
    | user_role_in_case | joint |  |
    | interim_motion | wait |  |
    | general_information_about_forms | False |  |
  And I take a screenshot
  And I should see the phrase "Your Personal Action Plan in 2 Steps"
  And I should see the phrase "Learn about child support"
  And I should see the phrase "Get more information or help"
  And I download "child_support_action_plan.pdf"

Scenario: Row #54 
Â Â Given I start the interview at "child_support.yml"
  And I get to the question id "download child support" with this data:
    | var | value | trigger |
    | wants_action_plan | True |  |
    | existing_case | unknown |  |
    | after_courtview | open |  |
    | user_role_in_case | plaintiff |  |
    | interim_motion | ask |  |
    | number_of_children | one |  |
  And I take a screenshot
  And I should see the phrase "Your Personal Action Plan in 10 Steps"
  And I should see the phrase "Learn about child support"
  And I should see the phrase "Ask for interim child support"
  And I should see the phrase "Fill out the Child Support Guidelines Affidavit"
  And I should see the phrase "Figure out your child support schedule"
  And I should see the phrase "Fill out the Shared Custody Support Calculation"
  And I should see the phrase "Fill out the Certificate of Service"
  And I should see the phrase "File your Motion for Interim Child Support"
  And I should see the phrase "Serve the other parent"
  And I should see the phrase "What to expect after you file"
  And I should see the phrase "Get more information or help"
  And I download "child_support_action_plan.pdf"

Scenario: Row #55 
Â Â Given I start the interview at "child_support.yml"
  And I get to the question id "download child support" with this data:
    | var | value | trigger |
    | wants_action_plan | True |  |
    | existing_case | unknown |  |
    | after_courtview | open |  |
    | user_role_in_case | joint |  |
    | interim_motion | ask |  |
    | number_of_children | more than one |  |
  And I take a screenshot
  And I should see the phrase "Your Personal Action Plan in 10 Steps"
  And I should see the phrase "Learn about child support"
  And I should see the phrase "Ask for interim child support"
  And I should see the phrase "Fill out the Child Support Guidelines Affidavit"
  And I should see the phrase "Figure out your child support schedule"
  And I should see the phrase "Fill out the form that matches your situation"
  And I should see the phrase "Fill out the Certificate of Service"
  And I should see the phrase "File your Motion for Interim Child Support"
  And I should see the phrase "Serve the other parent"
  And I should see the phrase "What to expect after you file"
  And I should see the phrase "Get more information or help"
  And I download "child_support_action_plan.pdf"   