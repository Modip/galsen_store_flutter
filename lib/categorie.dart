import 'package:flutter/material.dart';
import 'package:galsen_store/chaire_page.dart';
import 'package:galsen_store/constant.dart';
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
      backgroundColor: kBackgroundColor,
      appBar: AppBar(
        backgroundColor: kBackgroundColor,
        elevation: 0,
        centerTitle: true,
        title: const Text(
          "Galsen Travel",
          style: TextStyle(color: kPrimaryColor),
        ),
        leading: IconButton(
          onPressed: () {
            Get.to(const Home(),
                transition: Transition.rightToLeftWithFade,
                duration: const Duration(seconds: 2));
          },
          icon: const Icon(Icons.arrow_back_ios_new, color: kPrimaryColor),
        ),
      ),
      body: SingleChildScrollView(
        child: Column(children: [
          SizedBox(
            height: height * .05,
            child: const Align(
                alignment: Alignment.centerLeft,
                child: Padding(
                  padding: EdgeInsets.only(left: 20.0),
                  child: Text(
                    "Categories",
                    style: TextStyle(fontSize: 20),
                  ),
                )),
          ),
          const SizedBox(
            height: 5,
          ),
          Container(
            padding: const EdgeInsets.symmetric(horizontal: 8),
            width: width * .9,
            height: 50,
            decoration: BoxDecoration(
                color: Colors.white,
                border: Border.all(
                    width: 1.5, color: const Color.fromARGB(255, 17, 5, 45)),
                borderRadius: BorderRadius.circular(10),
                boxShadow: const [
                  BoxShadow(
                      offset: Offset(1, 1),
                      blurRadius: 8,
                      color: Colors.white,
                      spreadRadius: -4)
                ]),
            child: const Center(
              child: TextField(
                decoration: InputDecoration(
                  border: InputBorder.none,
                  hintText: "Find your ...",
                  hintStyle: TextStyle(
                    fontSize: 15,
                    color: Color.fromARGB(255, 17, 5, 45),
                  ),
                  suffixIcon: Icon(
                    Icons.search,
                    color: Color.fromARGB(255, 17, 5, 45),
                  ),
                ),
              ),
            ),
          ),
          const SizedBox(
            height: 15,
          ),
          Container(
            padding: EdgeInsets.zero,
            height: height * .45,
            decoration: const BoxDecoration(
              color: kBackgroundColor,
            ),
            child: SizedBox(
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                physics: const BouncingScrollPhysics(),
                itemCount: categories.length,
                itemBuilder: ((context, index) {
                  final categorie = categories[index];
                  return InkWell(
                    onTap: () {
                      Get.to(
                        const ChairPage(),
                        transition: Transition.fade,
                        duration: const Duration(seconds: 2),
                      );
                    },
                    child: Container(
                      width: width * .7,
                      decoration: BoxDecoration(
                        color: kSecondaryColor,
                        border: Border.all(width: 1, color: kPrimaryColor),
                        borderRadius: BorderRadius.circular(20),
                        image: DecorationImage(
                            image: AssetImage(categorie.image),
                            fit: BoxFit.cover),
                      ),
                      padding: const EdgeInsets.only(left: 15),
                      margin: const EdgeInsets.only(
                        left: 20,
                      ),
                      child: Stack(
                        children: [
                          Positioned(
                            top: 20,
                            left: 10,
                            child: Text(
                              categorie.title,
                              style: const TextStyle(
                                  fontSize: 16, color: Colors.white),
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
            height: 15,
          ),
          Container(
            margin: const EdgeInsets.only(left: 20),
            child: const Align(
              alignment: Alignment.bottomLeft,
              child: Text(
                "Popular",
                style: TextStyle(fontSize: 16, color: kPrimaryColor),
              ),
            ),
          ),
          const SizedBox(
            height: 15,
          ),
          Container(
            height: height * .22,
            margin: const EdgeInsets.only(left: 5),
            child: ListView.builder(
              physics: const BouncingScrollPhysics(),
              scrollDirection: Axis.horizontal,
              itemCount: populars.length,
              itemBuilder: ((context, index) {
                final popular = populars[index];
                return InkWell(
                  onTap: () {},
                  child: Container(
                    width: width * .42,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: Colors.white,
                      border: Border.all(width: 1, color: kPrimaryColor),
                    ),
                    margin: const EdgeInsets.only(
                      left: 15,
                    ),
                    child: Stack(
                      children: [
                        Positioned(
                            child: Container(
                          height: height * .18,
                          decoration: BoxDecoration(
                              borderRadius: const BorderRadius.only(
                                topLeft: Radius.circular(10),
                                topRight: Radius.circular(10),
                              ),
                              color: kSecondaryColor,
                              image: DecorationImage(
                                  image: AssetImage(popular.image),
                                  fit: BoxFit.cover)),
                        )),
                        Positioned(
                            bottom: 5,
                            left: 5,
                            right: 5,
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text(popular.title,
                                    style: const TextStyle(
                                        fontSize: 12, color: kPrimaryColor)),
                                Row(
                                  children: [
                                    Text(popular.star,
                                        style: const TextStyle(
                                            fontSize: 12,
                                            color: kPrimaryColor)),
                                    const Icon(
                                      Icons.star,
                                      color: Colors.amber,
                                      size: 15,
                                    ),
                                  ],
                                ),
                              ],
                            ))
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
