import 'package:flutter/material.dart';

String title = "SLUNEČNÍ DOMOV o.p.s.";

class MenuItem {
  String name;
  double pos;
  MenuItem(this.name, this.pos);
}

List<MenuItem> menu = [
  MenuItem("O NÁS", 10),
  MenuItem("NÁŠ TÝM", 1498),
  MenuItem("PODPOŘTE", 2602),
  MenuItem("DOKUMENTY", 3071),
  MenuItem("GALERIE", 3400),
];

List<String> mainPics = [
  "assets/main1.jpg",
  "assets/gal1.jpg",
  "assets/gal2.jpg",
  "assets/gal3.jpg",
  "assets/gal4.jpg",
  "assets/gal5.jpg",
  "assets/gal7.jpg",
  "assets/gal8.jpg",
];

String text1 =
    "Sluneční domov o.p.s. je nestátní zařízení, poskytující sociální služby týdenního stacionáře ve dvou oddělených rodinných buňkách 14 klientům s diagnózou Poruchy autistického spektra-PAS, dětská schizofrenie (většinou s přidruženým mentálním postižením).\nDnes převažují klienti mladiství a mladí dospělí.\nSlužby jsou určeny klientům od počátku povinné školní docházky (tedy minimálně od 6 let věku), horní věková hranice není stanovena.";

class IconAndText {
  IconData icon;
  String text;
  IconAndText(this.icon, this.text);
}

List<IconAndText> it = [
  IconAndText(Icons.bed, "Ubytování a stravování internátního typu"),
  IconAndText(Icons.favorite, "Podpora při sebeobsluze a pracích v domácnosti"),
  IconAndText(Icons.school, "Spolupráce s pomocnou školou v okolí, doprovod do školy i ze školy"),
  IconAndText(Icons.work, "Pracovní terapie, podpora při uplatnění na trhu práce, cvičná pracovní místa"),
  IconAndText(Icons.fitness_center, "Podpora při aktivitách volného času sportovního i kulturního charakteru (tělocvična, plavání, tanec, kina)"),
  IconAndText(Icons.favorite_border, "Individuální láskyplný přístup pro rozvíjení schopností a dovedností klientů"),
  IconAndText(Icons.help_outline, "Individuální láskyplný přístup pro rozvíjení schopností a dovedností klientů"),
];

String text3 = "Cillum tempor officia do mollit dolor consequat anim eiusmod est voluptate sunt enim excepteur.\nAliqua consectetur veniam elit laboris voluptate nostrud culpa.";

class Contact {
  String name;
  String position;
  String tel;
  String photo;
  Contact(this.name, this.position, this.tel, this.photo);
}

List<List<Contact>> contacts = [
  [
    Contact("Alexandra Řezníčková", "Ředitelka", "+420 776 662 740", "assets/person1.jpg"),
    Contact("Jan Pergl", "Zástupce ředitelky, ekonom", "+420 774 332 198", "assets/person2.jpg"),
  ],
  [
    Contact("Eliška Šilová", "Vedoucí asistentů v přímé péči", "+420 739 457 888", "assets/person3.jpg"),
    Contact("Klára Látalová", "Vedoucí asistentů v přímé péči", "+420 776 721 761", "assets/person4.jpg"),
    Contact("Martin Sopr", "Asistent", "TODO", "assets/person5.jpg"),
  ],
  [
    Contact("Lucie Kalajcidisová", "Asistent", "+420 608 729 535", "assets/person6.jpg"),
    Contact("Anežka Stará", "Asistent", "+420 606 588 369", "assets/person7.jpg"),
    Contact("Zuzana Horáčková", "Kuchařka", "+420 721 703 416", "assets/person8.jpg"),
  ],
];

class DocLink {
  String name;
  String link;
  DocLink(this.name, this.link);
}

List<DocLink> docs = [
  DocLink("Žádost o úmístění (PDF)", "assets/doc1.pdf"),
  DocLink("Smlouva + aktuální ceník (PDF)", "assets/doc2.pdf"),
  DocLink("Žádost o zpracování údajů (PDF)", "assets/doc3.pdf"),
];

List<List<String>> gallery = [
  [
    "assets/gal1.jpg",
    "assets/gal2.jpg",
    "assets/gal3.jpg",
  ],
  [
    "assets/gal4.jpg",
    "assets/gal5.jpg",
    "assets/gal6.jpg",
  ],
  [
    "assets/gal7.jpg",
    "assets/gal8.jpg",
    "assets/main1.jpg",
  ],
];

String mapLink = "https://www.google.com/maps/place/Slune%C4%8Dn%C3%AD+domov+o.p.s./data=!3m1!4b1!4m5!3m4!1s0x470b92d5e21f8a75:0x2e1cffde22898eaa!8m2!3d50.0939013!4d14.5300375";

String footer1Head = "INFO";
List<String> footer1Text = [
  "Sluneční domov o.p.s.",
  "IČO 01402871",
  "Jahodnická ev.č. 66",
  "Praha 9",
  "PSČ 198 00",
];

String footer2Head = "MENU";
