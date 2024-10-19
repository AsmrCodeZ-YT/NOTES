
TEXT = "In publishing and graphic design, Lorem ipsum is a placeholder text commonly used to demonstrate the visual form of a document or a typeface without relying on meaningful content. Lorem ipsum may be used as a placeholder before the final copy is available."
TEXT2 = "Lorem ipsum is a placeholder text commonly used to demonstrate the visual form of a document or a typeface without relying on meaningful content. Lorem ipsum may be used as a placeholder before the final copy is available."

list_text = [TEXT, TEXT2]

# NEWTEXTLIST = TEXT.lower().split()
MUST  = ["placeholder","Lorem"]
MAYBE = ["graphic", "0"]

def word_searching(text:str, must:list, maybe:list):
    COUNT = 0
    NEWTEXTLIST = text.lower().split()
    MUST  = must
    MAYBE = maybe
    
    for i in MUST:
        if i.lower() in NEWTEXTLIST:
            COUNT += 1

            if COUNT == len(MUST):
                if len(MAYBE) == 0: return (COUNT,0)
                else:
                    JCOUNT = 0
                    for j in MAYBE:
                        if j.lower() in NEWTEXTLIST: JCOUNT += 1
                    


                    return (COUNT,JCOUNT)
            else: return (0,0)



for i in list_text:
    a,l = word_searching(i, MUST, MAYBE)
    print(a,l)
