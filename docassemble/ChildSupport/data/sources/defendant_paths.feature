Feature: User paths

Scenario: doesn't want action plan row # 1
  Given I start the interview at "child_support.yml"
  And I get to the question id "download child support" with this data:
    | var | value | trigger |
    | wants_action_plan | False |  |
  And I take a screenshot
  And I should see the phrase "Try another Guided Assistant"
  And I should see the phrase "Look at the court’s self-help web pages"
  And I should see the phrase "Get more information or help"
  
Scenario: The case ended and we got our final paperwork. row #16
  Given I start the interview at "child_support.yml"
  And I get to the question id "download child support" with this data:
    | var | value | trigger |
    | wants_action_plan | True |  |
    | existing_case | open |  |
    | user_role_in_case | closed |  |
  And I take a screenshot
  And I should see the phrase "Learn about child support"
  And I should see the phrase "Decide if you need to change your order"
  And I should see the phrase "Get more information or help"
  
Scenario: The case ended and we got our final paperwork. row #40
  Given I start the interview at "child_support.yml"
  And I get to the question id "download child support" with this data:
    | var | value | trigger |
    | wants_action_plan | True |  |
    | existing_case | unknown |  |
    | after_courtview | open |  |
    | user_role_in_case | closed |  |
  And I take a screenshot
  And I should see the phrase "Learn about child support"
  And I should see the phrase "Decide if you need to change your order"
  And I should see the phrase "Get more information or help"

Scenario: Just answer Yes to and first option to every question row #2
  Given I start the interview at "child_support.yml"
  And I get to the question id "download child support" with this data:
    | var | value | trigger |
    | wants_action_plan | True |  |
    | existing_case | open |  |
    | user_role_in_case | defendant |  |
    | need_to_respond | True |  |
    | case_type | divorce |  |
    | interim_motion | wait |  |
    | general_information_about_forms | True |  |
    | number_of_children | one |  |
  And I take a screenshot
  And I should see the phrase "Your Personal Action Plan in 7 Steps"
  And I should see the phrase "Learn about child support"
  And I should see the phrase "Respond to your divorce case"
  And I should see the phrase "Fill out the Child Support Guidelines Affidavit"
  And I should see the phrase "Figure out your child support schedule"
  And I should see the phrase "Fill out the Shared Custody Support Calculation"
  And I should see the phrase "File and serve your forms"
  And I should see the phrase "Get more information or help"

Scenario: Just answer Yes to and first option to every question row #41
  Given I start the interview at "child_support.yml"
  And I get to the question id "download child support" with this data:
    | var | value | trigger |
    | wants_action_plan | True |  |
    | existing_case | unknown |  |
    | after_courtview | open |  |    
    | user_role_in_case | defendant |  |
    | need_to_respond | True |  |
    | case_type | custody |  |
    | interim_motion | wait |  |
    | general_information_about_forms | True |  |
    | number_of_children | one |  |
  And I take a screenshot
  And I should see the phrase "Your Personal Action Plan in 7 Steps"
  And I should see the phrase "Learn about child support"
  And I should see the phrase "Respond to your custody case"
  And I should see the phrase "Fill out the Child Support Guidelines Affidavit"
  And I should see the phrase "Figure out your child support schedule"
  And I should see the phrase "Fill out the Shared Custody Support Calculation"
  And I should see the phrase "File and serve your forms"
  And I should see the phrase "Get more information or help"
  
  
Scenario: Defendant responds doesn't want interim order has more than one child row #3
  Given I start the interview at "child_support.yml"
  And I get to the question id "download child support" with this data:
    | var | value | trigger |
    | wants_action_plan | True |  |
    | existing_case | open |  |
    | user_role_in_case | defendant |  | 
    | need_to_respond | True |  |
    | case_type | legal separation |  |
    | interim_motion | wait |  |
    | general_information_about_forms | True |  |
    | number_of_children | more than one |  | 
  And I take a screenshot
  And I should see the phrase "Your Personal Action Plan in 7 Steps"
  And I should see the phrase "Learn about child support"
  And I should see the phrase "Respond to your legal separation case"
  And I should see the phrase "Fill out the Child Support Guidelines Affidavit"
  And I should see the phrase "Figure out your child support schedule"
  And I should see the phrase "Fill out the form that matches your situation"
  And I should see the phrase "File and serve your forms"
  And I should see the phrase "Get more information or help"
  
Scenario: Defendant responds uses courtview doesn't want interim order has more than one child row #42
  Given I start the interview at "child_support.yml"
  And I get to the question id "download child support" with this data:
    | var | value | trigger |
    | wants_action_plan | True |  |
    | existing_case | unknown |  |
    | after_courtview | open |  |    
    | user_role_in_case | defendant |  | 
    | need_to_respond | True |  |
    | case_type | custody |  |
    | interim_motion | wait |  |
    | general_information_about_forms | True |  |
    | number_of_children | more than one |  | 
  And I take a screenshot
  And I should see the phrase "Your Personal Action Plan in 7 Steps"
  And I should see the phrase "Learn about child support"
  And I should see the phrase "Respond to your custody case"
  And I should see the phrase "Fill out the Child Support Guidelines Affidavit"
  And I should see the phrase "Figure out your child support schedule"
  And I should see the phrase "Fill out the form that matches your situation"
  And I should see the phrase "File and serve your forms"
  And I should see the phrase "Get more information or help"
  
Scenario: Defendant responds wants interim order has one child row #5
  Given I start the interview at "child_support.yml"
  And I get to the question id "download child support" with this data:
    | var | value | trigger |
    | wants_action_plan | True |  |
    | existing_case | open | |
    | user_role_in_case | defendant | | 
    | need_to_respond | True | |
    | case_type | divorce |  |
    | interim_motion | ask | |
    | number_of_children | one | | 
  And I take a screenshot
  And I should see the phrase "Your Personal Action Plan in 8 Steps"
  And I should see the phrase "Learn about child support"
  And I should see the phrase "Respond to your divorce case"  
  And I should see the phrase "Ask for interim child support"
  And I should see the phrase "Fill out the Child Support Guidelines Affidavit"
  And I should see the phrase "Figure out your child support schedule"
  And I should see the phrase "Fill out the Shared Custody Support Calculation"
  And I should see the phrase "File and serve your forms"
  And I should see the phrase "Get more information or help"
  
Scenario: Defendant after courtview responds wants interim order has one child row #44
  Given I start the interview at "child_support.yml"
  And I get to the question id "download child support" with this data:
    | var | value | trigger |
    | wants_action_plan | True |  |
    | existing_case | unknown |  |
    | after_courtview | open |  |    
    | user_role_in_case | defendant | | 
    | need_to_respond | True | |
    | case_type | divorce |  |
    | interim_motion | ask | |
    | number_of_children | one | | 
  And I take a screenshot
  And I should see the phrase "Your Personal Action Plan in 8 Steps"
  And I should see the phrase "Learn about child support"
  And I should see the phrase "Respond to your divorce case"  
  And I should see the phrase "Ask for interim child support"
  And I should see the phrase "Fill out the Child Support Guidelines Affidavit"
  And I should see the phrase "Figure out your child support schedule"
  And I should see the phrase "Fill out the Shared Custody Support Calculation"
  And I should see the phrase "File and serve your forms"
  And I should see the phrase "Get more information or help"
  
Scenario: Defendant responds wants interim order has more than one child row #6
  Given I start the interview at "child_support.yml"
  And I get to the question id "download child support" with this data:
    | var | value | trigger |
    | wants_action_plan | True |  |
    | existing_case | open | |
    | user_role_in_case | defendant | | 
    | need_to_respond | True | |
    | case_type | legal separation |  |
    | interim_motion | ask | |
    | number_of_children | more than one | | 
  And I take a screenshot
  And I should see the phrase "Your Personal Action Plan in 8 Steps"
  And I should see the phrase "Learn about child support"
  And I should see the phrase "Respond to your legal separation case"
  And I should see the phrase "Ask for interim child support"
  And I should see the phrase "Fill out the Child Support Guidelines Affidavit"
  And I should see the phrase "Figure out your child support schedule"
  And I should see the phrase "Fill out the form that matches your situation"
  And I should see the phrase "File and serve your forms"
  And I should see the phrase "Get more information or help"

Scenario: Defendant after courtview responds wants interim order has more than one child row #45
  Given I start the interview at "child_support.yml"
  And I get to the question id "download child support" with this data:
    | var | value | trigger |
    | wants_action_plan | True |  |
    | existing_case | unknown | |
    | after_courtview | open | |
    | user_role_in_case | defendant | | 
    | need_to_respond | True | |
    | case_type | custody |  |
    | interim_motion | ask | |
    | number_of_children | more than one | | 
  And I take a screenshot
  And I should see the phrase "Your Personal Action Plan in 8 Steps"
  And I should see the phrase "Learn about child support"
  And I should see the phrase "Respond to your custody case"
  And I should see the phrase "Ask for interim child support"
  And I should see the phrase "Fill out the Child Support Guidelines Affidavit"
  And I should see the phrase "Figure out your child support schedule"
  And I should see the phrase "Fill out the form that matches your situation"
  And I should see the phrase "File and serve your forms"
  And I should see the phrase "Get more information or help"
  
Scenario: Defendant doesn't responds or want interim order has one child row #10
  Given I start the interview at "child_support.yml"
  And I get to the question id "download child support" with this data:
    | var | value | trigger |
    | wants_action_plan | True |  |
    | existing_case | open | |
    | user_role_in_case | defendant | | 
    | need_to_respond | False | |
    | interim_motion | wait | |
    | general_information_about_forms | True | |
    | number_of_children | one | | 
  And I take a screenshot
  And I should see the phrase "Your Personal Action Plan in 6 Steps"
  And I should see the phrase "Learn about child support"
  And I should see the phrase "Fill out the Child Support Guidelines Affidavit"
  And I should see the phrase "Figure out your child support schedule"
  And I should see the phrase "Fill out the Shared Custody Support Calculation"
  And I should see the phrase "File and serve your forms"
  And I should see the phrase "Get more information or help"
  
Scenario: Defendant doesn't responds or want interim order has one child row #46
  Given I start the interview at "child_support.yml"
  And I get to the question id "download child support" with this data:
    | var | value | trigger |
    | wants_action_plan | True |  |
    | existing_case | unknown | |
    | after_courtview | open | |
    | user_role_in_case | defendant | | 
    | need_to_respond | False | |
    | interim_motion | wait | |
    | general_information_about_forms | True | |
    | number_of_children | one | | 
  And I take a screenshot
  And I should see the phrase "Your Personal Action Plan in 6 Steps"
  And I should see the phrase "Learn about child support"
  And I should see the phrase "Fill out the Child Support Guidelines Affidavit"
  And I should see the phrase "Figure out your child support schedule"
  And I should see the phrase "Fill out the Shared Custody Support Calculation"
  And I should see the phrase "File and serve your forms"
  And I should see the phrase "Get more information or help"
  
  
Scenario: Defendant doesn't responds or want interim order has more than one child row #11
  Given I start the interview at "child_support.yml"
  And I get to the question id "download child support" with this data:
    | var | value | trigger |
    | wants_action_plan | True |  |
    | existing_case | open | |
    | user_role_in_case | defendant | | 
    | need_to_respond | False | |
    | interim_motion | wait | |
    | general_information_about_forms | True | |
    | number_of_children | more than one | | 
  And I take a screenshot
  And I should see the phrase "Your Personal Action Plan in 6 Steps"
  And I should see the phrase "Learn about child support"
  And I should see the phrase "Fill out the Child Support Guidelines Affidavit"
  And I should see the phrase "Figure out your child support schedule"
  And I should see the phrase "Fill out the form that matches your situation"
  And I should see the phrase "File and serve your forms"
  And I should see the phrase "Get more information or help"
  
Scenario: Defendant doesn't responds or want interim order has more than one child row #47
  Given I start the interview at "child_support.yml"
  And I get to the question id "download child support" with this data:
    | var | value | trigger |
    | wants_action_plan | True |  |
    | existing_case | unknown | |
    | after_courtview | open | |
    | user_role_in_case | defendant | | 
    | need_to_respond | False | |
    | interim_motion | wait | |
    | general_information_about_forms | True | |
    | number_of_children | more than one | | 
  And I take a screenshot
  And I should see the phrase "Your Personal Action Plan in 6 Steps"
  And I should see the phrase "Learn about child support"
  And I should see the phrase "Fill out the Child Support Guidelines Affidavit"
  And I should see the phrase "Figure out your child support schedule"
  And I should see the phrase "Fill out the form that matches your situation"
  And I should see the phrase "File and serve your forms"
  And I should see the phrase "Get more information or help"
  
Scenario: Defendant doesn’t want to respond, ask for interim motion or get general information #12
  Given I start the interview at "child_support.yml"
  And I get to the question id "download child support" with this data:
    | var | value | trigger |
    | wants_action_plan | True |  |
    | existing_case | open | |
    | user_role_in_case | defendant | | 
    | need_to_respond | False | |
    | interim_motion | wait | |
    | general_information_about_forms | False | | 
  And I take a screenshot
  And I should see the phrase "Your Personal Action Plan in 2 Steps"
  And I should see the phrase "Learn about child support"
  And I should see the phrase "Get more information or help"
  
Scenario: After Courtview, defendant doesn’t want to respond, ask for interim motion or get general information #48
  Given I start the interview at "child_support.yml"
  And I get to the question id "download child support" with this data:
    | var | value | trigger |
    | wants_action_plan | True |  |
    | existing_case | unknown | |
    | after_courtview | open | |
    | user_role_in_case | defendant | | 
    | need_to_respond | False | |
    | interim_motion | wait | |
    | general_information_about_forms | False | | 
  And I take a screenshot
  And I should see the phrase "Your Personal Action Plan in 2 Steps"
  And I should see the phrase "Learn about child support"
  And I should see the phrase "Get more information or help"
  
Scenario: Defendant doesn’t want to respond wants interim motion and has one child row #13
  Given I start the interview at "child_support.yml"
  And I get to the question id "download child support" with this data:
    | var | value | trigger |
    | wants_action_plan | True |  |
    | existing_case | open | |
    | user_role_in_case | defendant | | 
    | need_to_respond | False | |
    | interim_motion | ask | |
    | number_of_children | one | | 
  And I take a screenshot
  And I should see the phrase "Your Personal Action Plan in 7 Steps"
  And I should see the phrase "Learn about child support"
  And I should see the phrase "Ask for interim child support"
  And I should see the phrase "Fill out the Child Support Guidelines Affidavit"
  And I should see the phrase "Figure out your child support schedule"
  And I should see the phrase "Fill out the Shared Custody Support Calculation"
  And I should see the phrase "File and serve your forms"
  And I should see the phrase "Get more information or help"
  
Scenario: After courtview, defendant doesn’t want to respond wants interim motion and has one child row #49
  Given I start the interview at "child_support.yml"
  And I get to the question id "download child support" with this data:
    | var | value | trigger |
    | wants_action_plan | True |  |
    | existing_case | unknown | |
    | after_courtview | open | |
    | user_role_in_case | defendant | | 
    | need_to_respond | False | |
    | interim_motion | ask | |
    | number_of_children | one | | 
  And I take a screenshot
  And I should see the phrase "Your Personal Action Plan in 7 Steps"
  And I should see the phrase "Learn about child support"
  And I should see the phrase "Ask for interim child support"
  And I should see the phrase "Fill out the Child Support Guidelines Affidavit"
  And I should see the phrase "Figure out your child support schedule"
  And I should see the phrase "Fill out the Shared Custody Support Calculation"
  And I should see the phrase "File and serve your forms"
  And I should see the phrase "Get more information or help"
 
Scenario: Defendant doesn’t want to respond wants interim motion and has >1 child row #14
  Given I start the interview at "child_support.yml"
  And I get to the question id "download child support" with this data:
    | var | value | trigger |
    | wants_action_plan | True |  |
    | existing_case | open | |
    | user_role_in_case | defendant | | 
    | need_to_respond | False | |
    | interim_motion | ask | |
    | number_of_children | more than one | | 
  And I take a screenshot
  And I should see the phrase "Your Personal Action Plan in 7 Steps"
  And I should see the phrase "Learn about child support" 
  And I should see the phrase "Ask for interim child support"
  And I should see the phrase "Fill out the Child Support Guidelines Affidavit"
  And I should see the phrase "Figure out your child support schedule"
  And I should see the phrase "Fill out the form that matches your situation"
  And I should see the phrase "File and serve your forms"
  And I should see the phrase "Get more information or help"
  
Scenario: After courtview, defendant doesn’t want to respond wants interim motion and has >1 child row #50
  Given I start the interview at "child_support.yml"
  And I get to the question id "download child support" with this data:
    | var | value | trigger |
    | wants_action_plan | True |  |
    | existing_case | unknown | |
    | after_courtview | open | |
    | user_role_in_case | defendant | | 
    | need_to_respond | False | |
    | interim_motion | ask | |
    | number_of_children | more than one | | 
  And I take a screenshot
  And I should see the phrase "Your Personal Action Plan in 7 Steps"
  And I should see the phrase "Learn about child support" 
  And I should see the phrase "Ask for interim child support"
  And I should see the phrase "Fill out the Child Support Guidelines Affidavit"
  And I should see the phrase "Figure out your child support schedule"
  And I should see the phrase "Fill out the form that matches your situation"
  And I should see the phrase "File and serve your forms"
  And I should see the phrase "Get more information or help"