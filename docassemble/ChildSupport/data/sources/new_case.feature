Feature: User paths
#pushing from laptop over court wifi
Scenario: New case parent wants to know about paternity and asking CSSD for support row #23
  Given I start the interview at "child_support.yml"
  And I get to the question id "download child support" with this data:
    | var | value | trigger |
    | wants_action_plan | True |  |    
    | existing_case | none |  |
    | paternity | True |  | 
    | ask_court_or_cssd | cssd |  |
  And I take a screenshot
  And I should see the phrase "Your Personal Action Plan in 4 Steps"  
  And I should see the phrase "Find out who counts as your child's legal parents"
  And I should see the phrase "Learn about child support"
  And I should see the phrase "Learn about the Alaska Child Support Services Division (CSSD)"
  And I should see the phrase "Get more information or help"


Scenario: New case after courtview parent wants to know about paternity and asking CSSD for support row #56
  Given I start the interview at "child_support.yml"
  And I get to the question id "download child support" with this data:
    | var | value | trigger |
    | wants_action_plan | True |  |    
    | existing_case | unknown |  |    
    | after_courtview | none |  |
    | paternity | True |  | 
    | ask_court_or_cssd | cssd |  |
  And I take a screenshot
  And I should see the phrase "Your Personal Action Plan in 4 Steps"  
  And I should see the phrase "Find out who counts as your child's legal parents"
  And I should see the phrase "Learn about child support"
  And I should see the phrase "Learn about the Alaska Child Support Services Division (CSSD)"
  And I should see the phrase "Get more information or help"

#Scenario: New case parent wants to know about paternity and asking the court row #24
#  Given I start the interview at "child_support.yml"
#  And I get to the question id "download child support" with this data:
#    | var | value | trigger |
#    | wants_action_plan | True |  |    
#    | existing_case | none |  |
#    | paternity | True |  | 
#    | ask_court_or_cssd | court |  |
#    | parents_married | True |  | 
#    | general_information_about_forms | False |  | 
#    | interim_motion | wait |  |     
#  And I take a screenshot
#  And I should see the phrase "Your Personal Action Plan in 4 Steps"  
#  And I should see the phrase "Find out who counts as your child's legal parents"
#  And I should see the phrase "Learn about child support"
#  And I should see the phrase "Start a court case"
#  And I should see the phrase "Get more information or help"
#
#Scenario: New case parent wants to know about paternity and asking both CSSD and court row #24
#  Given I start the interview at "child_support.yml"
#  And I get to the question id "download child support" with this data:
#    | var | value | trigger |
#    | wants_action_plan | True |  |    
#    | existing_case | none |  |
#    | paternity | True |  | 
#    | ask_court_or_cssd | both |  |
#    | parents_married | False |  | 
#    | general_information_about_forms | False |  | 
#    | interim_motion | wait |  |     
#  And I take a screenshot
#  And I should see the phrase "Your Personal Action Plan in 5 Steps"  
#  And I should see the phrase "Find out who counts as your child's legal parents"
#  And I should see the phrase "Learn about child support"
#  And I should see the phrase "Learn about the Alaska Child Support Services Division (CSSD)"
#  And I should see the phrase "Start a court case"
#  And I should see the phrase "Get more information or help"
#  
#Scenario: New case parent wants to know about paternity and asking the court row #57
#  Given I start the interview at "child_support.yml"
#  And I get to the question id "download child support" with this data:
#    | var | value | trigger |
#    | wants_action_plan | True |  |    
#    | existing_case | unknown |  |    
#    | after_courtview | none |  |
#    | paternity | True |  | 
#    | ask_court_or_cssd | court |  |
#    | parents_married | False |  | 
#    | general_information_about_forms | False |  | 
#    | interim_motion | wait |  |     
#  And I take a screenshot
#  And I should see the phrase "Your Personal Action Plan in 4 Steps"  
#  And I should see the phrase "Find out who counts as your child's legal parents"
#  And I should see the phrase "Learn about child support"
#  And I should see the phrase "Start a court case"
#  And I should see the phrase "Get more information or help"
#
#
#Scenario: New case parent wants to know about paternity and asking both CSSD and court row #57
#  Given I start the interview at "child_support.yml"
#  And I get to the question id "download child support" with this data:
#    | var | value | trigger |
#    | wants_action_plan | True |  |    
#    | existing_case | unknown |  |    
#    | after_courtview | none |  |
#    | paternity | True |  | 
#    | ask_court_or_cssd | both |  |
#    | parents_married | True |  | 
#    | general_information_about_forms | False |  | 
#    | interim_motion | wait |  |     
#  And I take a screenshot
#  And I should see the phrase "Your Personal Action Plan in 5 Steps"  
#  And I should see the phrase "Find out who counts as your child's legal parents"
#  And I should see the phrase "Learn about child support"
#  And I should see the phrase "Learn about the Alaska Child Support Services Division (CSSD)"
#  And I should see the phrase "Start a court case"
#  And I should see the phrase "Get more information or help"
