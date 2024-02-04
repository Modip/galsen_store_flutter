import 'package:flutter/material.dart';
import 'package:galsen_store/categorie.dart';
import 'package:galsen_store/chaire_page.dart';
import 'package:galsen_store/constant.dart';
import 'package:galsen_store/data.dart';
import 'package:get/get.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  bool displayMenu = false;

  double sizeTop = 0;
  double sizeRight = 0;
  double sizeBottom = 0;

  void showMenu() {
    setState(() {
      displayMenu = !displayMenu;
      if (sizeTop == 0) {
        sizeTop = 40;
        sizeBottom = 40;
        sizeRight = -250;
      } else {
        sizeTop = 0;
        sizeRight = 0;
        sizeBottom = 0;
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    return Scaffold(
      backgroundColor: kPrimaryColor,
      appBar: AppBar(
        backgroundColor: displayMenu ? kPrimaryColor : kBackgroundColor,
        title: Text(
          "Galsen Store",
          style: TextStyle(
            color: displayMenu
                ? kBackgroundColor
                : const Color.fromARGB(255, 17, 5, 45),
          ),
        ),
        centerTitle: true,
        leading: Material(
          color: Colors.transparent,
          child: InkWell(
            onTap: () {
              setState(() {
                showMenu();
              });
            },
            child: Icon(
              displayMenu ? Icons.close : Icons.menu,
              size: 30,
              color: displayMenu
                  ? kBackgroundColor
                  : const Color.fromARGB(255, 17, 5, 45),
            ),
          ),
        ),
        actions: [
          Padding(
            padding: const EdgeInsets.all(10.0),
            child: Icon(
              Icons.store,
              size: 30,
              color: displayMenu
                  ? kBackgroundColor
                  : const Color.fromARGB(255, 17, 5, 45),
            ),
          ),
        ],
        elevation: 0,
      ),
      body: Stack(
        children: [
          Column(
            children: [
              const SizedBox(
                height: 40,
              ),
              Container(
                margin: const EdgeInsets.only(
                  left: 20,
                ),
                child: const Align(
                  alignment: Alignment.centerLeft,
                  child: Text(
                    "Menu",
                    style: TextStyle(
                        color: kBackgroundColor,
                        fontSize: 20,
                        fontWeight: FontWeight.bold),
                  ),
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              SizedBox(
                  height: height * .7,
                  child: Column(
                    children: [
                      SizedBox(
                        height: height * .45,
                        child: ListView(
                          children: [
                            ListTile(
                              title: (const Text("Recommended",
                                  style: TextStyle(
                                      fontSize: 20, color: kBackgroundColor))),
                              leading: const Icon(Icons.recommend,
                                  color: kBackgroundColor),
                              onTap: () {
                                Get.to(
                                  const CategoriPage(),
                                  transition: Transition.fade,
                                  duration: const Duration(seconds: 2),
                                );
                              },
                            ),
                            ListTile(
                              title: (const Text("Popular",
                                  style: TextStyle(
                                      fontSize: 20, color: kBackgroundColor))),
                              leading: const Icon(Icons.people,
                                  color: kBackgroundColor),
                              onTap: () {
                                Get.to(
                                  const CategoriPage(),
                                  transition: Transition.fade,
                                  duration: const Duration(seconds: 2),
                                );
                              },
                            ),
                            ListTile(
                              title: (const Text("Categories",
                                  style: TextStyle(
                                      fontSize: 20, color: kBackgroundColor))),
                              leading: const Icon(Icons.category_rounded,
                                  color: kBackgroundColor),
                              onTap: () {
                                Get.to(
                                  const CategoriPage(),
                                  transition: Transition.fade,
                                  duration: const Duration(seconds: 2),
                                );
                              },
                            ),
                            ListTile(
                              title: (const Text("Search",
                                  style: TextStyle(
                                      fontSize: 20, color: Colors.white))),
                              leading:
                                  const Icon(Icons.search, color: Colors.white),
                              onTap: () {
                                Get.to(
                                  const ChairPage(),
                                  transition: Transition.fade,
                                  duration: const Duration(seconds: 2),
                                );
                              },
                            ),
                            ListTile(
                              title: (const Text("Account",
                                  style: TextStyle(
                                      fontSize: 20, color: kBackgroundColor))),
                              leading: const Icon(Icons.person,
                                  color: kBackgroundColor),
                              onTap: () {
                                Get.to(
                                  const CategoriPage(),
                                  transition: Transition.fade,
                                  duration: const Duration(seconds: 2),
                                );
                              },
                            )
                          ],
                        ),
                      ),
                      const Spacer(),
                      SizedBox(
                        height: height * .13,
                        child: ListView(
                          children: [
                            ListTile(
                              title: (const Text("Settings",
                                  style: TextStyle(
                                      fontSize: 20, color: kBackgroundColor))),
                              leading: const Icon(Icons.settings,
                                  color: kBackgroundColor),
                              onTap: () {
                                Get.to(
                                  const CategoriPage(),
                                  transition: Transition.fade,
                                  duration: const Duration(seconds: 2),
                                );
                              },
                            ),
                            ListTile(
                              title: (const Text("Logout",
                                  style: TextStyle(
                                      fontSize: 20, color: Colors.white))),
                              leading: const Icon(
                                Icons.logout,
                                color: Colors.white,
                              ),
                              onTap: () {
                                Get.to(
                                  const CategoriPage(),
                                  transition: Transition.fade,
                                  duration: const Duration(seconds: 3),
                                );
                              },
                            ),
                          ],
                        ),
                      ),
                    ],
                  )),
            ],
          ),
          AnimatedPositioned(
            duration: const Duration(milliseconds: 550),
            top: sizeTop,
            right: sizeRight,
            bottom: sizeBottom,
            child: Container(
              height: displayMenu ? height * .95 : height,
              width: displayMenu ? width * .95 : width,
              decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(displayMenu ? 20 : 0)),
              child: Stack(
                children: [
                  Positioned(
                    left: 5,
                    top: 20,
                    child: Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 10),
                      child: Container(
                        padding: const EdgeInsets.symmetric(horizontal: 10),
                        width: displayMenu ? width * .8 : width * .92,
                        height: 50,
                        decoration: BoxDecoration(
                            color: Colors.white,
                            border: Border.all(
                                width: 1.5,
                                color: const Color.fromARGB(255, 17, 5, 45)),
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
                    ),
                  ),
                  Positioned(
                    top: 110,
                    left: 20,
                    child: Row(
                      children: const [
                        Text(
                          "You",
                          style: TextStyle(
                              fontSize: 20, fontWeight: FontWeight.bold),
                        ),
                        Text(
                          " may like it",
                          style: TextStyle(
                            fontSize: 20,
                          ),
                        ),
                      ],
                    ),
                  ),
                  Positioned(
                    top: displayMenu ? 150 : 160,
                    left: 0,
                    right: 0,
                    child: SizedBox(
                      height: 400,
                      child: ListView.builder(
                          itemCount: categories.length,
                          scrollDirection: Axis.horizontal,
                          shrinkWrap: true,
                          physics: const BouncingScrollPhysics(),
                          itemBuilder: (context, index) {
                            final maillot = categories[index];
                            return Container(
                              margin: const EdgeInsets.only(left: 20),
                              height: height * .4,
                              width: width * .7,
                              decoration: BoxDecoration(
                                  color: maillot.primaryColor,
                                  borderRadius: BorderRadius.circular(12)),
                              child: Stack(children: [
                                Positioned(
                                    top: 10,
                                    left: 10,
                                    child: Text(maillot.title))
                              ]),
                            );
                          }),
                    ),
                  ),
                  Positioned(
                    bottom: displayMenu ? 10 : 60,
                    left: 20,
                    child: Row(
                      children: const [
                        Text("Discover by",
                            style: TextStyle(
                              fontSize: 20,
                            )),
                        Text(
                          " categories",
                          style: TextStyle(
                              fontSize: 20, fontWeight: FontWeight.bold),
                        ),
                        Padding(
                          padding: EdgeInsets.only(top: 5.0),
                          child: Icon(
                            Icons.arrow_forward_ios,
                            size: 14,
                          ),
                        )
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
