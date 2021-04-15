*** Settings ***
Library    RequestsLibrary
Library    Collections

*** Variables ***
${base_url}    https://602e32564410730017c50345.mockapi.io
*** Test Cases ***
Post_Pet

    Create Session    mysession    ${base_url}
    ${header}=  create dictionary    Content-Type=application/json
    ${request_body}=    create dictionary    name=applewatch   price=100    status=true
    ${response}=    POST On Session    mysession    /api/products    json=${request_body}    headers=${header}
    #Validations
    ${status}=   convert to string    ${response.status_code}
    should be equal     ${status}     201

    ${response_body}=  convert to string    ${response.content}
    should contain   ${response_body}    applewatch

    ${content-type}=    get from dictionary    ${response.headers}    Content-Type
    should be equal    ${content-type}    application/json

