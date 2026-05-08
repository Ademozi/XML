import xml.sax.handler

class MyHandler(xml.sax.handler.ContentHandler):

    def __init__(self):
        self.current = ""
        self.titre = ""
        self.annee = ""

    def startElement(self, name, attrs):
        self.current = name

        if name == "album":
            self.annee = attrs.get("annee")

    def characters(self, content):
        if self.current == "titre":
            self.titre += content


    def endElement(self, name):
        if name == "titre":
            self.titre = self.titre.strip()

        if name == "album":
            print("Titre: ", self.titre)
            print("Year: ", self.annee)
            print("--------")

            self.titre = ""
            self.annee = ""


parser = xml.sax.make_parser()
handler = MyHandler()
parser.setContentHandler(handler)

parser.parse("artisteDevoir.xml")