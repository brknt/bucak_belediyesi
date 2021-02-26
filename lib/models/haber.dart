class Haber {
  final int id;
  final String image, haber_title, haber_description, haber_date;

  Haber(
      {this.id,
      this.image,
      this.haber_title,
      this.haber_description,
      this.haber_date});
}

//Haber Listesi
List<Haber> haber_list = [
  Haber(
      id: 1,
      image: "assets/images/image1.jpg",
      haber_title: "Halk Pazarımız haftanın 5 Günü Açık",
      haber_description:
          "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ",
      haber_date: "15 Aralık 2020"),
  Haber(
      id: 2,
      image: "assets/images/image1.jpg",
      haber_title: "Hayırlı Olsun Ziyaretinde Bulunduk",
      haber_description:
          "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt",
      haber_date: "15 Aralık 2020"),
  Haber(
      id: 3,
      image: "assets/images/image1.jpg",
      haber_title: "Haber 3 Haber 3 ",
      haber_description:
          "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt",
      haber_date: "15 Aralık 2020"),
];
