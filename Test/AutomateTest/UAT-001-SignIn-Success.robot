*** Settings ***
Library    Selenium2Library

*** Variables ***
${SERVER}         10.199.66.227
${BROWSER}        Chrome
${INDEX URL}    http://${SERVER}/SoftEn2019/Sec2/Last%20group/
${LOGIN URL}    http://${SERVER}/SoftEn2019/Sec2/Last%20group/Models/CheckLoginh.php
${HOME URL}    http://${SERVER}/SoftEn2019/Sec2/Last%20group/Views/ClassList.php
${HOME STUDENT URL}    http://${SERVER}/SoftEn2019/Sec2/Last%20group/Views/ClassListForStudent.php
${VALID LECTURER USERNAME}    chitsutha
${VALID LECTURER PASSWORD}    ABCdef123
${VALID TA USERNAME}    student_ta@kkumail.com
${VALID TA PASSWORD}    ABCdef123
${VALID STUDENT USERNAME}    sompong_student@kkumail.com
${VALID STUDENT PASSWORD}    ABCdef123
${INVALID LECTURER USERNAME}    chitsuthaaa
${INVALID LECTURER PASSWORD}    ABCdef
${INVALID TA USERNAME}    student_ta@kku
${INVALID TA PASSWORD}    ABCdef
${INVALID STUDENT USERNAME}    sompong_student@kku
${INVALID STUDENT PASSWORD}    ABCdef
${HOME TITLE}    Class List
${TA LOGIN SUCCESS MESSAGE}    Hello " TA " Welcome Back !
${LECTURER LOGIN SUCCESS MESSAGE}    Hello " chitsutha " Welcome Back !
${STUDENT LOGIN SUCCESS MESSAGE}    Hello " นายภูริณัฐ นิลละออง " Welcome Back !
${DELAY}    0.5

*** Test Cases ***
ํT01 Lecturer Sign in Success
  Open Browser    ${INDEX URL}    ${BROWSER}
  Set Selenium Speed     ${DELAY}
  Location Should Be    ${INDEX URL}
  Input Text    username    ${VALID LECTURER USERNAME}
  Input Text    password    ${VALID LECTURER PASSWORD}
  Click Button    signin
  Location Should Contain    ${HOME URL}
  Wait Until Page Contains    ${HOME TITLE}
  Wait Until Page Contains    ${LECTURER LOGIN SUCCESS MESSAGE}
  [Teardown]    Close Browser
  
T02 TA Sign in Success
  Open Browser    ${INDEX URL}    ${BROWSER}
  Set Selenium Speed     ${DELAY}
  Location Should Be    ${INDEX URL}
  Input Text    username    ${VALID TA USERNAME}
  Input Text    password    ${VALID TA PASSWORD}
  Click Button    signin
  Location Should Contain    ${HOME URL}
  Wait Until Page Contains    ${HOME TITLE}
  Wait Until Page Contains    ${TA LOGIN SUCCESS MESSAGE}
  [Teardown]    Close Browser

T03 Student Sign in Success
  Open Browser    ${INDEX URL}    ${BROWSER}
  Set Selenium Speed     ${DELAY}
  Location Should Be    ${INDEX URL}
  Input Text    username    ${VALID STUDENT USERNAME}
  Input Text    password    ${VALID STUDENT PASSWORD}
  Click Button    signin
  Location Should Contain    ${HOME STUDENT URL}
  Wait Until Page Contains    ${HOME TITLE}
  Wait Until Page Contains    ${STUDENT LOGIN SUCCESS MESSAGE}
  [Teardown]    Close Browser
  

