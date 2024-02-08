class Category {
  final String title, image;

  const Category({
    required this.title,
    required this.image,
  });
}

const categories = [
  Category(
    title: "Chairs",
    image: "assets/images/chair1.jpg",
  ),
  Category(
    title: "Lamps",
    image: "assets/images/lamp2.jpg",
  ),
  Category(
    title: "Screens",
    image: "assets/images/ecran1.jpg",
  ),
  Category(
    title: "Glasses",
    image: "assets/images/lunette3.jpg",
  ),
  Category(
    title: "Mouses",
    image: "assets/images/souris2.jpg",
  ),
  Category(
    title: "Headphone",
    image: "assets/images/casque1.jpg",
  ),
];

class Popular {
  final String title, star, image;

  const Popular({
    required this.title,
    required this.star,
    required this.image,
  });
}

const populars = [
  Popular(
    title: "Chairs",
    star: "90",
    image: "assets/images/gamer2.jpg",
  ),
  Popular(
    title: "Lamps",
    star: "80",
    image: "assets/images/lamp2.jpg",
  ),
  Popular(
    title: "Mouses",
    star: "77",
    image: "assets/images/souris1.jpg",
  ),
  Popular(
    title: "Laptop",
    star: "70",
    image: "assets/images/ecran1_bg.png",
  ),
  Popular(
    title: "Headphone",
    star: "61",
    image: "assets/images/casque2.jpg",
  ),
  Popular(
    title: "Safas",
    star: "53",
    image: "assets/images/gamer22_bg.png",
  ),
  Popular(
    title: "Glasses",
    star: "50",
    image: "assets/images/lunette1.jpg",
  ),
];

class Chair {
  final String image, title, price, color;

  Chair({
    required this.title,
    required this.image,
    required this.price,
    required this.color,
  });
}

List<Chair> chairs = [
  Chair(
    title: "Gamer",
    image: "assets/images/gamer44_bg.png",
    price: "\$300",
    color: "black-white",
  ),
  Chair(
      title: "Gamer",
      image: "assets/images/gamer1_bg.png",
      price: "\$500",
      color: "red-black"),
  Chair(
      title: "Gamer",
      image: "assets/images/gamer2_bg.png",
      price: "\$110",
      color: "blue-black"),
  Chair(
      title: "Gamer",
      image: "assets/images/gamer4_bg.png",
      price: "\$100",
      color: "blue-black"),
  Chair(
      title: "Gamer",
      image: "assets/images/gamer5_bg.png",
      price: "\$90",
      color: "green"),
  Chair(
      title: "Sefas",
      image: "assets/images/gamer3_bg.png",
      price: "\$130",
      color: "green"),
  Chair(
      title: "Desk",
      image: "assets/images/gamer6_bg.png",
      price: "\$80",
      color: "blue-black"),
  Chair(
      title: "Desk",
      image: "assets/images/gamer7_bg.png",
      price: "\$80",
      color: "black"),
];

class Setup {
  final String title, image;

  Setup({required this.title, required this.image});
}

List setups = [
  Setup(
    title: "Modip",
    image: "assets/images/setup1.jpg",
  ),
  Setup(
    title: "S2F",
    image: "assets/images/setup2.jpg",
  ),
  Setup(
    title: "Black n White",
    image: "assets/images/setup3.jpg",
  ),
  Setup(
    title: "Dieye-Code",
    image: "assets/images/setup4.jpg",
  ),
  Setup(
    title: "Malaw",
    image: "assets/images/setup5.jpg",
  ),
];
