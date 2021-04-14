import random
import string
from robot.api.deco import keyword


@keyword
def Get_Random_Emails():
    a = ''.join(random.choice(string.ascii_lowercase + string.digits) for i in range(16))
    email = a + '@' + 'gmail.com'
    return email
