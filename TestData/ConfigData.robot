*** Variables ***
${url}            http://automationpractice.com/index.php
${browser}        chrome
${sign_in_link}     xpath://a[contains(text(),'Sign in')]
${email_textbox}  xpath://input[@id='email']
${password_textbox}  xpath://input[@id='passwd']
${sign_in_button}    xpath://button[@id='SubmitLogin']
${error_message}   xpath://div[@class='alert alert-danger']/p