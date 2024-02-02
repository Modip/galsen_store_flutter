import 'package:flutter/material.dart';

class Category {
  final String title;

  final String subtitle;
  final Color primaryColor;
  final Color secondColor;

  const Category({
    required this.title,
    required this.subtitle,
    required this.primaryColor,
    required this.secondColor,
  });
}

const categories = [
  Category(
      title: "Tables",
      subtitle: "Les lions de la teranga",
      primaryColor: Colors.green,
      secondColor: Colors.red),
  Category(
      title: "Lamps",
      subtitle: "Le Syli national",
      primaryColor: Colors.yellow,
      secondColor: Colors.red),
  Category(
      title: "Chaires",
      subtitle: "Les mouhabitouns",
      primaryColor: Colors.red,
      secondColor: Colors.black),
  Category(
      title: "Safas",
      subtitle: "Les aigles du Mali",
      primaryColor: Colors.blue,
      secondColor: Colors.white),
];

class Menu {
  final IconData icon;
  final String title;

  Menu({
    required this.icon,
    required this.title,
  });
}

final menus = [
  Menu(icon: Icons.recommend, title: "Recommended"),
  Menu(icon: Icons.man, title: "Popular"),
  Menu(icon: Icons.favorite, title: "Favories"),
  Menu(icon: Icons.photo_library_outlined, title: "Categories"),
  Menu(icon: Icons.search, title: "Search"),
  Menu(icon: Icons.person, title: "Account"),
];
final submenus = [
  Menu(icon: Icons.settings, title: "Settings"),
  Menu(icon: Icons.logout, title: "Logout"),
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
      image: "assets/images/chair1.jpeg",
      price: "30k",
      color: "green"),
  Chair(
      title: "Gamer",
      image: "assets/images/chair2.jpeg",
      price: "30k",
      color: "green"),
  Chair(
      title: "Gamer",
      image: "assets/images/chair3.jpeg",
      price: "30k",
      color: "green"),
  Chair(
      title: "Gamer",
      image: "assets/images/chair1.jpeg",
      price: "30k",
      color: "white"),
  Chair(
      title: "Gamer",
      image: "assets/images/chair2.jpeg",
      price: "30k",
      color: "yellow"),
  Chair(
      title: "Gamer",
      image: "assets/images/chair3.jpeg",
      price: "30k",
      color: "black"),
];
