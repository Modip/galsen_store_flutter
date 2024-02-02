import 'package:flutter/material.dart';
import 'package:galsen_store/home.dart';
import 'package:get/get.dart';

import 'data.dart';

class CategoriPage extends StatefulWidget {
  const CategoriPage({Key? key}) : super(key: key);

  @override
  State<CategoriPage> createState() => _CategoriPageState();
}

class _CategoriPageState extends State<CategoriPage> {
  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;

    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        centerTitle: true,
        title: const Text(
          "Galsen Travel",
          style: TextStyle(color: Colors.black),
        ),
        leading: IconButton(
          onPressed: () {
            Get.to(const Home());
          },
          icon: const Icon(Icons.arrow_back_ios_new, color: Colors.black),
        ),
      ),
      body: SingleChildScrollView(
        child: Column(children: [
          SizedBox(
            height: height * .07,
            child: const Align(
                alignment: Alignment.centerLeft,
                child: Padding(
                  padding: EdgeInsets.only(left: 15.0),
                  child: Text(
                    "Categories",
                    style: TextStyle(fontSize: 20),
                  ),
                )),
          ),
          Container(
            padding: EdgeInsets.zero,
            height: height * .6,
            decoration: const BoxDecoration(
              color: Colors.white,
            ),
            child: SizedBox(
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                physics: const BouncingScrollPhysics(),
                itemCount: categories.length,
                itemBuilder: ((context, index) {
                  final categorie = categories[index];
                  return InkWell(
                    onTap: () {},
                    child: Container(
                      width: width * .7,
                      decoration: BoxDecoration(
                          color: categorie.primaryColor,
                          borderRadius: BorderRadius.circular(20)),
                      margin: const EdgeInsets.all(
                        15,
                      ),
                      child: Stack(
                        children: [
                          Positioned(
                            top: 20,
                            left: 20,
                            child: Text(
                              categorie.title,
                              style: const TextStyle(
                                  fontSize: 16, color: Colors.white),
                            ),
                          ),
                          Positioned(
                            bottom: 20,
                            left: 40,
                            right: -20,
                            child: Container(
                              height: height * .45,
                              color: categorie.secondColor,
                            ),
                          ),
                        ],
                      ),
                    ),
                  );
                }),
              ),
            ),
          ),
          const SizedBox(
            child: Align(
              alignment: Alignment.bottomLeft,
              child: Padding(
                padding: EdgeInsets.all(10.0),
                child: Text(
                  "Popular",
                  style: TextStyle(fontSize: 16),
                ),
              ),
            ),
          ),
          Container(
            height: height * .15,
            padding: EdgeInsets.zero,
            child: ListView.builder(
              physics: const BouncingScrollPhysics(),
              scrollDirection: Axis.horizontal,
              itemCount: categories.length,
              itemBuilder: ((context, index) {
                final categorie = categories[index];
                return InkWell(
                  onTap: () {},
                  child: Container(
                    width: 110,
                    decoration: BoxDecoration(
                        color: categorie.primaryColor,
                        borderRadius: BorderRadius.circular(10)),
                    margin: const EdgeInsets.all(
                      15,
                    ),
                    child: Stack(
                      children: [
                        Row(
                          children: [
                            Padding(
                              padding: const EdgeInsets.only(right: 15),
                              child: Text(categorie.title,
                                  style: const TextStyle(
                                      fontSize: 12, color: Colors.white)),
                            ),
                            Text(
                              categorie.title,
                              style: const TextStyle(
                                  fontSize: 12, color: Colors.white),
                            ),
                          ],
                        )
                      ],
                    ),
                  ),
                );
              }),
            ),
          )
        ]),
      ),
    );
  }
}
