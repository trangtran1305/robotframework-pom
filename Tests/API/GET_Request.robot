*** Settings ***
Library    RequestsLibrary
Library    Collections

*** Variables ***
${base_url}    https://petstore.swagger.io/v2
${index}    5
*** Test Cases ***
Get_PetInfo

    Create Session    mysession    ${base_url}
    ${response}=    GET On Session    mysession    /pet/${index}
    #Validations
    ${status}=   convert to string    ${response.status_code}
    should be equal     ${status}     200

    ${body}=   convert to string    ${response.content}
    should contain    ${body}    jimmy

    ${content-type}=    get from dictionary    ${response.headers}    Content-Type
    should be equal    ${content-type}    application/json

