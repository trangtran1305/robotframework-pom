*** Settings ***
Documentation     IF / ELSE IF / ELSE example using Robot Framework 3 and 4.
...               Generate a random number.
...               Do things based on the generated number.
...               Stop (pass) when the condition is met.

*** Variables ***
${MAX_TRIES}=     ${50}
${NUMBER_TO_PASS_ON}=    7

*** Keywords ***
Robot Framework 3: Generate Numbers And Act On Result
    FOR    ${i}    IN RANGE    ${MAX_TRIES}
        ${random}=    Evaluate    random.randint(0, 10)
        ${is_expected}=    Evaluate    ${random} == ${NUMBER_TO_PASS_ON}
        Run Keyword Unless
        ...    ${is_expected}
        ...    Log To Console    Condition not met.
        Run Keyword If
        ...    ${is_expected}
        ...    Pass Execution    "${random} == ${NUMBER_TO_PASS_ON}"
        ...    ELSE IF
        ...    ${random} > ${NUMBER_TO_PASS_ON}
        ...    Log To Console    Too high.
        ...    ELSE
        ...    Log To Console    Too low.
    END

*** Keywords ***
Robot Framework 4: Generate Numbers And Act On Result
    FOR    ${i}    IN RANGE    ${MAX_TRIES}
        ${random}=    Evaluate    random.randint(0, 10)
        IF    ${random} == ${NUMBER_TO_PASS_ON}
            Pass Execution    "${random} == ${NUMBER_TO_PASS_ON}"
        ELSE IF    ${random} > ${NUMBER_TO_PASS_ON}
            Log To Console    Too high.
        ELSE
            Log To Console    Too low.
        END
    END

*** Test Cases ***
Do if-else logic
    Robot Framework 4: Generate Numbers And Act On Result
