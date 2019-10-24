*** Settings ***
Library    SeleniumLibrary

*** Variables ***
${SERVER}    localhost:7272
${BROWSER}    Chrome
${TriangleProblem URL}     http://${SERVER}/Lab4/TriangleProblem.html
${DELAY}    0

*** Test Cases ***
Open Register Page
    Open Browser    ${TriangleProblem URL}    ${BROWSER} 
	Location Should Be    ${TriangleProblem URL}
	Set Selenium Speed    ${DELAY}

TriangleProblem 1
    Input Text    side_a    1
	Input Text    side_b    175
	Input Text    side_c    175
    Click Button    submit
	Location Should Contain    ${TriangleProblem URL}
    Wait Until Page Contains    Result = Isosceles

TriangleProblem 2
    Input Text    side_a    2
	Input Text    side_b    175
	Input Text    side_c    175
    Click Button    submit
	Location Should Contain    ${TriangleProblem URL}
    Wait Until Page Contains    Result = Isosceles
   
TriangleProblem 3
    Input Text    side_a    175
	Input Text    side_b    175
	Input Text    side_c    175
    Click Button    submit
	Location Should Contain    ${TriangleProblem URL}
    Wait Until Page Contains    Result = Equilateral
	
TriangleProblem 4
    Input Text    side_a    349
	Input Text    side_b    175
	Input Text    side_c    175
    Click Button    submit
	Location Should Contain    ${TriangleProblem URL}
    Wait Until Page Contains    Result = Isosceles
	
TriangleProblem 5
    Input Text    side_a    350
	Input Text    side_b    175
	Input Text    side_c    175
    Click Button    submit
	Location Should Contain    ${TriangleProblem URL}
    Wait Until Page Contains    Result = NotATriangle
	
TriangleProblem 6
    Input Text    side_a    175
	Input Text    side_b    1
	Input Text    side_c    175
    Click Button    submit
	Location Should Contain    ${TriangleProblem URL}
    Wait Until Page Contains    Result = Isosceles
	
TriangleProblem 7
    Input Text    side_a    175
	Input Text    side_b    2
	Input Text    side_c    175
    Click Button    submit
	Location Should Contain    ${TriangleProblem URL}
    Wait Until Page Contains    Result = Isosceles
	
TriangleProblem 8
    Input Text    side_a    175
	Input Text    side_b    349
	Input Text    side_c    175
    Click Button    submit
	Location Should Contain    ${TriangleProblem URL}
    Wait Until Page Contains    Result = Isosceles
	
TriangleProblem 9
    Input Text    side_a    175
	Input Text    side_b    350
	Input Text    side_c    175
    Click Button    submit
	Location Should Contain    ${TriangleProblem URL}
    Wait Until Page Contains    Result = NotATriangle
	
TriangleProblem 10
    Input Text    side_a    175
	Input Text    side_b    175
	Input Text    side_c    1
    Click Button    submit
	Location Should Contain    ${TriangleProblem URL}
    Wait Until Page Contains    Result = Isosceles
	
TriangleProblem 11
    Input Text    side_a    175
	Input Text    side_b    175
	Input Text    side_c    2
    Click Button    submit
	Location Should Contain    ${TriangleProblem URL}
    Wait Until Page Contains    Result = Isosceles
	
TriangleProblem 12
    Input Text    side_a    175
	Input Text    side_b    175
	Input Text    side_c    349
    Click Button    submit
	Location Should Contain    ${TriangleProblem URL}
    Wait Until Page Contains    Result = Isosceles
	
TriangleProblem 13
    Input Text    side_a    175
	Input Text    side_b    175
	Input Text    side_c    350
    Click Button    submit
	Location Should Contain    ${TriangleProblem URL}
    Wait Until Page Contains    Result = NotATriangle
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	