@NewCase
Feature: User paths

@row23
Scenario:  row #23
  Given I start the interview at "child_support.yml"
  And I get to the question id "download child support" with this data:
    | var | value | trigger |
    | wants_action_plan | True |  |    
    | existing_case | none |  |
    | paternity | True |  | 
    | ask_court_or_cssd | cssd |  |
  And I take a screenshot
  And I should see the phrase "Your Personal Action Plan in 4 Steps"  
  And I should see the phrase "Find out who counts as your child’s legal parents"
  And I should see the phrase "Learn about child support"
  And I should see the phrase "Learn about the Alaska Child Support Enforcement Division (CSED)"
  And I should see the phrase "Get more information or help"
  And I download "child_support_action_plan.pdf"


Scenario:  row #24
  Given I start the interview at "child_support.yml"
  And I get to the question id "download child support" with this data:
    | var | value | trigger |
    | wants_action_plan | True |  |    
    | existing_case | none |  |
    | paternity | True |  | 
    | ask_court_or_cssd | court |  |
    | parents_married | True |  | 
    | general_information_about_forms | True |  |
    | number_of_children | one |  | 
    | interim_motion | wait |  |     
  And I take a screenshot
  And I should see the phrase "Your Personal Action Plan in 7 Steps"  
  And I should see the phrase "Find out who counts as your child’s legal parents"
  And I should see the phrase "Learn about child support"
  And I should see the phrase "Start a court case"
  And I should see the phrase "Fill out the Child Support Guidelines Affidavit"
  And I should see the phrase "Figure out your child support schedule"
  And I should see the phrase "Fill out the Shared Custody Support Calculation"
  And I should see the phrase "Get more information or help"
  And I download "child_support_action_plan.pdf"
  
  
Scenario:  row #25
  Given I start the interview at "child_support.yml"
  And I get to the question id "download child support" with this data:
    | var | value | trigger |
    | wants_action_plan | True |  |    
    | existing_case | none |  |
    | paternity | True |  | 
    | ask_court_or_cssd | both |  |
    | parents_married | False |  | 
    | general_information_about_forms | True |  |
    | number_of_children | one |  | 
    | interim_motion | ask |  |     
  And I take a screenshot
  And I should see the phrase "Your Personal Action Plan in 13 Steps"  
  And I should see the phrase "Find out who counts as your child’s legal parents"
  And I should see the phrase "Learn about child support"
  And I should see the phrase "Learn about the Alaska Child Support Enforcement Division (CSED)"
  And I should see the phrase "Start a court case"
  And I should see the phrase "Ask for interim child support"
  And I should see the phrase "Fill out the Child Support Guidelines Affidavit"
  And I should see the phrase "Figure out your child support schedule"
  And I should see the phrase "Fill out the Shared Custody Support Calculation"
  And I should see the phrase "Fill out the Certificate of Service"
  And I should see the phrase "File your motion forms"
  And I should see the phrase "Serve the other parent"
  And I should see the phrase "What to expect after you file"
  And I should see the phrase "Get more information or help"
  And I download "child_support_action_plan.pdf"  
  

Scenario:  #26
  Given I start the interview at "child_support.yml"
  And I get to the question id "download child support" with this data:
    | var | value | trigger |
    | wants_action_plan | True |  |    
    | existing_case | none |  |
    | paternity | True |  | 
    | ask_court_or_cssd | both |  |
    | parents_married | False |  | 
    | general_information_about_forms | True |  |
    | number_of_children | more than one |  |  
    | interim_motion | wait |  |     
  And I take a screenshot
  And I should see the phrase "Your Personal Action Plan in 8 Steps"  
  And I should see the phrase "Find out who counts as your child’s legal parents"
  And I should see the phrase "Learn about child support"
  And I should see the phrase "Learn about the Alaska Child Support Enforcement Division (CSED)"
  And I should see the phrase "Start a court case"
  And I should see the phrase "Fill out the Child Support Guidelines Affidavit"
  And I should see the phrase "Figure out your child support schedule"
  And I should see the phrase "Fill out the form that matches your situation"
  And I should see the phrase "Get more information or help"
  And I download "child_support_action_plan.pdf"


Scenario: #27
  Given I start the interview at "child_support.yml"
  And I get to the question id "download child support" with this data:
    | var | value | trigger |
    | wants_action_plan | True |  |    
    | existing_case | none |  |
    | paternity | True |  | 
    | ask_court_or_cssd | court |  |
    | parents_married | True |  | 
    | general_information_about_forms | True |  |
    | number_of_children | more than one |  | 
    | interim_motion | ask |  |     
  And I take a screenshot
  And I should see the phrase "Your Personal Action Plan in 12 Steps"  
  And I should see the phrase "Find out who counts as your child’s legal parents"
  And I should see the phrase "Learn about child support"
  And I should see the phrase "Start a court case"
  And I should see the phrase "Ask for interim child support"
  And I should see the phrase "Fill out the Child Support Guidelines Affidavit"
  And I should see the phrase "Figure out your child support schedule"
  And I should see the phrase "Fill out the form that matches your situation"
  And I should see the phrase "Fill out the Certificate of Service"
  And I should see the phrase "File your motion forms"
  And I should see the phrase "Serve the other parent"
  And I should see the phrase "What to expect after you file"
  And I should see the phrase "Get more information or help"
  And I download "child_support_action_plan.pdf"  

Scenario:  #28
  Given I start the interview at "child_support.yml"
  And I get to the question id "download child support" with this data:
    | var | value | trigger |
    | wants_action_plan | True |  |    
    | existing_case | none |  |
    | paternity | True |  | 
    | ask_court_or_cssd | both |  |
    | parents_married | True |  | 
    | general_information_about_forms | False |  |
    | interim_motion | wait |  |     
  And I take a screenshot
  And I should see the phrase "Your Personal Action Plan in 5 Steps"  
  And I should see the phrase "Find out who counts as your child’s legal parents"
  And I should see the phrase "Learn about child support"
  And I should see the phrase "Learn about the Alaska Child Support Enforcement Division (CSED)"
  And I should see the phrase "Start a court case"
  And I should see the phrase "Get more information or help"
  And I download "child_support_action_plan.pdf"

Scenario:  #29
  Given I start the interview at "child_support.yml"
  And I get to the question id "download child support" with this data:
    | var | value | trigger |
    | wants_action_plan | True |  |    
    | existing_case | none |  |
    | paternity | True |  | 
    | ask_court_or_cssd | court |  |
    | parents_married | False |  | 
    | general_information_about_forms | False |  |
    | number_of_children | one |  | 
    | interim_motion | ask |  |     
  And I take a screenshot
  And I should see the phrase "Your Personal Action Plan in 12 Steps"  
  And I should see the phrase "Find out who counts as your child’s legal parents"
  And I should see the phrase "Learn about child support"
  And I should see the phrase "Start a court case"
  And I should see the phrase "Ask for interim child support"
  And I should see the phrase "Fill out the Child Support Guidelines Affidavit"
  And I should see the phrase "Figure out your child support schedule"
  And I should see the phrase "Fill out the Shared Custody Support Calculation"
  And I should see the phrase "Fill out the Certificate of Service"
  And I should see the phrase "File your motion forms"
  And I should see the phrase "Serve the other parent"
  And I should see the phrase "What to expect after you file"
  And I should see the phrase "Get more information or help" 
  And I download "child_support_action_plan.pdf" 
  
Scenario:  row #30
  Given I start the interview at "child_support.yml"
  And I get to the question id "download child support" with this data:
    | var | value | trigger |
    | wants_action_plan | True |  |    
    | existing_case | none |  |
    | paternity | True |  | 
    | ask_court_or_cssd | both |  |
    | parents_married | False |  | 
    | general_information_about_forms | False |  |
    | number_of_children | more than one |  | 
    | interim_motion | ask |  |     
  And I take a screenshot
  And I should see the phrase "Your Personal Action Plan in 13 Steps"  
  And I should see the phrase "Find out who counts as your child’s legal parents"
  And I should see the phrase "Learn about child support"
  And I should see the phrase "Learn about the Alaska Child Support Enforcement Division (CSED)"
  And I should see the phrase "Start a court case"
  And I should see the phrase "Ask for interim child support"
  And I should see the phrase "Fill out the Child Support Guidelines Affidavit"
  And I should see the phrase "Figure out your child support schedule"
  And I should see the phrase "Fill out the form that matches your situation"
  And I should see the phrase "Fill out the Certificate of Service"
  And I should see the phrase "File your motion forms"
  And I should see the phrase "Serve the other parent"
  And I should see the phrase "What to expect after you file"
  And I should see the phrase "Get more information or help"
  And I download "child_support_action_plan.pdf"  


Scenario:  row #56
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
  And I should see the phrase "Find out who counts as your child’s legal parents"
  And I should see the phrase "Learn about child support"
  And I should see the phrase "Learn about the Alaska Child Support Enforcement Division (CSED)"
  And I should see the phrase "Get more information or help"
  And I download "child_support_action_plan.pdf"


Scenario:  row #57
  Given I start the interview at "child_support.yml"
  And I get to the question id "download child support" with this data:
    | var | value | trigger |
    | wants_action_plan | True |  |    
    | existing_case | unknown |  |    
    | after_courtview | none |  |
    | paternity | True |  | 
    | ask_court_or_cssd | court |  |
    | parents_married | False |  | 
    | general_information_about_forms | True |  |
    | number_of_children | one |  |  
    | interim_motion | wait |  |     
  And I take a screenshot
  And I should see the phrase "Your Personal Action Plan in 7 Steps"  
  And I should see the phrase "Find out who counts as your child’s legal parents"
  And I should see the phrase "Learn about child support"
  And I should see the phrase "Start a court case"
  And I should see the phrase "Fill out the Child Support Guidelines Affidavit"
  And I should see the phrase "Figure out your child support schedule"
  And I should see the phrase "Fill out the Shared Custody Support Calculation"
  And I should see the phrase "Get more information or help"
  And I download "child_support_action_plan.pdf"

Scenario:  row #64
  Given I start the interview at "child_support.yml"
  And I get to the question id "download child support" with this data:
    | var | value | trigger |
    | wants_action_plan | True |  |
    | existing_case | unknown |  |    
    | after_courtview | none |  |
    | paternity | False |  | 
    | ask_court_or_cssd | cssd |  |
  And I take a screenshot
  And I should see the phrase "Your Personal Action Plan in 3 Steps"  
  And I should see the phrase "Learn about child support"
  And I should see the phrase "Learn about the Alaska Child Support Enforcement Division (CSED)"
  And I should see the phrase "Get more information or help"
  And I download "child_support_action_plan.pdf"

Scenario:  row #65
  Given I start the interview at "child_support.yml"
  And I get to the question id "download child support" with this data:
    | var | value | trigger |
    | wants_action_plan | True |  |
    | existing_case | unknown |  |    
    | after_courtview | none |  |
    | paternity | False |  | 
    | ask_court_or_cssd | both |  |
    | parents_married | False |  | 
    | general_information_about_forms | True |  |
    | number_of_children | one |  | 
    | interim_motion | wait |  |     
  And I take a screenshot
  And I should see the phrase "Your Personal Action Plan in 7 Steps"  
  And I should see the phrase "Learn about child support"
  And I should see the phrase "Learn about the Alaska Child Support Enforcement Division (CSED)"
  And I should see the phrase "Start a court case"
  And I should see the phrase "Fill out the Child Support Guidelines Affidavit"
  And I should see the phrase "Figure out your child support schedule"
  And I should see the phrase "Fill out the Shared Custody Support Calculation"
  And I should see the phrase "Get more information or help"
  And I download "child_support_action_plan.pdf"

Scenario:  row #66
  Given I start the interview at "child_support.yml"
  And I get to the question id "download child support" with this data:
    | var | value | trigger |
    | wants_action_plan | True |  |
    | existing_case | unknown |  |    
    | after_courtview | none |  |
    | paternity | False |  | 
    | ask_court_or_cssd | both |  |
    | parents_married | False |  | 
    | general_information_about_forms | True |  |
    | number_of_children | one |  | 
    | interim_motion | ask |  |     
  And I take a screenshot
  And I should see the phrase "Your Personal Action Plan in 12 Steps"  
  And I should see the phrase "Learn about child support"
  And I should see the phrase "Learn about the Alaska Child Support Enforcement Division (CSED)"
  And I should see the phrase "Start a court case"
  And I should see the phrase "Ask for interim child support"
  And I should see the phrase "Fill out the Child Support Guidelines Affidavit"
  And I should see the phrase "Figure out your child support schedule"
  And I should see the phrase "Fill out the Shared Custody Support Calculation"
  And I should see the phrase "Fill out the Certificate of Service"
  And I should see the phrase "File your motion forms"
  And I should see the phrase "Serve the other parent"
  And I should see the phrase "What to expect after you file"
  And I should see the phrase "Get more information or help"
  And I download "child_support_action_plan.pdf"  
  

Scenario:  row #67
  Given I start the interview at "child_support.yml"
  And I get to the question id "download child support" with this data:
    | var | value | trigger |
    | wants_action_plan | True |  |
    | existing_case | unknown |  |    
    | after_courtview | none |  |
    | paternity | False |  | 
    | ask_court_or_cssd | both |  |
    | parents_married | False |  | 
    | general_information_about_forms | True |  |
    | number_of_children | more than one |  |  
    | interim_motion | wait |  |     
  And I take a screenshot
  And I should see the phrase "Your Personal Action Plan in 7 Steps"
  And I should see the phrase "Learn about child support"
  And I should see the phrase "Learn about the Alaska Child Support Enforcement Division (CSED)"
  And I should see the phrase "Start a court case"
  And I should see the phrase "Fill out the Child Support Guidelines Affidavit"
  And I should see the phrase "Figure out your child support schedule"
  And I should see the phrase "Fill out the form that matches your situation"
  And I should see the phrase "Get more information or help"
  And I download "child_support_action_plan.pdf"


Scenario:  row #68
  Given I start the interview at "child_support.yml"
  And I get to the question id "download child support" with this data:
    | var | value | trigger |
    | wants_action_plan | True |  |
    | existing_case | unknown |  |    
    | after_courtview | none |  |
    | paternity | False |  | 
    | ask_court_or_cssd | court |  |
    | parents_married | True |  | 
    | general_information_about_forms | True |  |
    | number_of_children | more than one |  | 
    | interim_motion | ask |  |     
  And I take a screenshot
  And I should see the phrase "Your Personal Action Plan in 11 Steps"
  And I should see the phrase "Learn about child support"
  And I should see the phrase "Start a court case"
  And I should see the phrase "Ask for interim child support"
  And I should see the phrase "Fill out the Child Support Guidelines Affidavit"
  And I should see the phrase "Figure out your child support schedule"
  And I should see the phrase "Fill out the form that matches your situation"
  And I should see the phrase "Fill out the Certificate of Service"
  And I should see the phrase "File your motion forms"
  And I should see the phrase "Serve the other parent"
  And I should see the phrase "What to expect after you file"
  And I should see the phrase "Get more information or help"
  And I download "child_support_action_plan.pdf"  

Scenario:  row #69
  Given I start the interview at "child_support.yml"
  And I get to the question id "download child support" with this data:
    | var | value | trigger |
    | wants_action_plan | True |  |
    | existing_case | unknown |  |    
    | after_courtview | none |  |
    | paternity | False |  | 
    | ask_court_or_cssd | both |  |
    | parents_married | True |  | 
    | general_information_about_forms | False |  |
    | interim_motion | wait |  |     
  And I take a screenshot
  And I should see the phrase "Your Personal Action Plan in 4 Steps" "
  And I should see the phrase "Learn about child support"
  And I should see the phrase "Learn about the Alaska Child Support Enforcement Division (CSED)"
  And I should see the phrase "Start a court case"
  And I should see the phrase "Get more information or help"
  And I download "child_support_action_plan.pdf"

Scenario:  row #70
  Given I start the interview at "child_support.yml"
  And I get to the question id "download child support" with this data:
    | var | value | trigger |
    | wants_action_plan | True |  |   
    | existing_case | unknown |  |    
    | after_courtview | none |  |
    | paternity | False |  | 
    | ask_court_or_cssd | court |  |
    | parents_married | False |  | 
    | general_information_about_forms | False |  |
    | number_of_children | one |  | 
    | interim_motion | ask |  |     
  And I take a screenshot
  And I should see the phrase "Your Personal Action Plan in 11 Steps"  
  And I should see the phrase "Learn about child support"
  And I should see the phrase "Start a court case"
  And I should see the phrase "Ask for interim child support"
  And I should see the phrase "Fill out the Child Support Guidelines Affidavit"
  And I should see the phrase "Figure out your child support schedule"
  And I should see the phrase "Fill out the Shared Custody Support Calculation"
  And I should see the phrase "Fill out the Certificate of Service"
  And I should see the phrase "File your motion forms"
  And I should see the phrase "Serve the other parent"
  And I should see the phrase "What to expect after you file"
  And I should see the phrase "Get more information or help"
  And I download "child_support_action_plan.pdf"  
  
Scenario:  row #71
  Given I start the interview at "child_support.yml"
  And I get to the question id "download child support" with this data:
    | var | value | trigger |
    | wants_action_plan | True |  |    
    | existing_case | unknown |  |    
    | after_courtview | none |  |
    | paternity | False |  | 
    | ask_court_or_cssd | both |  |
    | parents_married | False |  | 
    | general_information_about_forms | False |  |
    | number_of_children | more than one |  | 
    | interim_motion | ask |  |     
  And I take a screenshot
  And I should see the phrase "Your Personal Action Plan in 12 Steps" 
  And I should see the phrase "Learn about child support"
  And I should see the phrase "Learn about the Alaska Child Support Enforcement Division (CSED)"
  And I should see the phrase "Start a court case"
  And I should see the phrase "Ask for interim child support"
  And I should see the phrase "Fill out the Child Support Guidelines Affidavit"
  And I should see the phrase "Figure out your child support schedule"
  And I should see the phrase "Fill out the form that matches your situation"
  And I should see the phrase "Fill out the Certificate of Service"
  And I should see the phrase "File your motion forms"
  And I should see the phrase "Serve the other parent"
  And I should see the phrase "What to expect after you file"
  And I should see the phrase "Get more information or help"
  And I download "child_support_action_plan.pdf"  