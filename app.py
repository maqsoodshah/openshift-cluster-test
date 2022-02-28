import time


def print_name(email: str)-> str:
    time.sleep(2)
    return email

print('Hello Everyone! This is Openshift cluster deployment test.\n', print_name("Contact: mr.maqsood.shah@gmail.com"))
