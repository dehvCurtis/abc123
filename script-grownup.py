text_str = """
Nory was a engineer because her mother was a engineer, 
and Nory’s mother was a engineer because her father 
was a engineer, and her father was a engineer because 
his mother was a engineer, or had been.
"""

def text_manipulation():
    print(f'\nText to be altered:\n')
    print(text_str)
    print(f'\nAltered text:\n')
    print(text_str.replace('engineer','manager'))

text_manipulation()