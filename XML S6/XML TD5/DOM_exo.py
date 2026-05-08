from xml.dom import minidom

doc = minidom.parse("artisteDevoir.xml")

# return the root of the element
element = doc.documentElement

artistes=element.getElementsByTagName("artiste")

for artiste in artistes:

    print("Artiste: ", artiste.getAttribute("nom"))

    print("Ville: ", artiste.getAttribute("ville"))

    bio = artiste.getElementsByTagName("biographie")[0].firstChild.data
    # [0] to get the first element 
    # firstChild to get the text, it is considered a child node
    # extracts the actual text from the text node. OR nodeValue


    print("Biography :", bio)

    print("--------------------")
