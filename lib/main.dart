import 'package:flutter/material.dart';
import 'package:galsen_store/categorie.dart';
import 'package:galsen_store/home.dart';
import 'package:get/get.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'Galsen Travel',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
     
      initialRoute: "/",
      getPages: [
        GetPage(name: "/", page: () => const Home()),
        GetPage(name: "/categories", page: () => const CategoriPage())
      ],
    );
  }
}
