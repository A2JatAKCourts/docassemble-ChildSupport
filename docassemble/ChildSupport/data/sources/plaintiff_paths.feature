@plaintiffs
Feature: User paths

Scenario: plaintiff doesn't want interim order has 1 child row #17
  Given I start the interview at "child_support.yml"
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
  And I download "child_support_preview.pdf"

Scenario: plaintiff doesn't want interim order has > 1 child row #18
  Given I start the interview at "child_support.yml"
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
  And I download "child_support_preview.pdf"
  
 Scenario: plaintiff doesn't want interim order or general info row #19
  Given I start the interview at "child_support.yml"
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
  And I download "child_support_preview.pdf"

Scenario: plaintiff wants interim order has 1 child row #20
  Given I start the interview at "child_support.yml"
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
  And I should see the phrase "File your motion forms"
  And I should see the phrase "Serve the other parent"
  And I should see the phrase "What to expect after you file"
  And I should see the phrase "Get more information or help"
  And I download "child_support_preview.pdf"

Scenario: plaintiff wants interim order has > 1 child row #21
  Given I start the interview at "child_support.yml"
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
  And I should see the phrase "File your motion forms"
  And I should see the phrase "Serve the other parent"
  And I should see the phrase "What to expect after you file"
  And I should see the phrase "Get more information or help"
  And I download "child_support_preview.pdf" 
  
  
Scenario: plaintiff doesn't want interim order has 1 child row #51
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
  And I should see the phrase "Your Personal Action Plan in 5 Steps"
  And I should see the phrase "Learn about child support"
  And I should see the phrase "Fill out the Child Support Guidelines Affidavit"
  And I should see the phrase "Figure out your child support schedule"
  And I should see the phrase "Fill out the Shared Custody Support Calculation"
  And I should see the phrase "Get more information or help"
  And I download "child_support_preview.pdf"

Scenario: plaintiff doesn't want interim order has > 1 child row #52
  Given I start the interview at "child_support.yml"
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
  And I download "child_support_preview.pdf"
  
 Scenario: plaintiff doesn't want interim order or general info row #53
  Given I start the interview at "child_support.yml"
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
  And I download "child_support_preview.pdf"

Scenario: plaintiff wants interim order has 1 child row #54
  Given I start the interview at "child_support.yml"
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
  And I should see the phrase "File your motion forms"
  And I should see the phrase "Serve the other parent"
  And I should see the phrase "What to expect after you file"
  And I should see the phrase "Get more information or help"
  And I download "child_support_preview.pdf"

Scenario: plaintiff wants interim order has > 1 child row #55
  Given I start the interview at "child_support.yml"
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
  And I should see the phrase "File your motion forms"
  And I should see the phrase "Serve the other parent"
  And I should see the phrase "What to expect after you file"
  And I should see the phrase "Get more information or help"
  And I download "child_support_preview.pdf"   