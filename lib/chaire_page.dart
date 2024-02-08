import 'package:flutter/material.dart';
import 'package:galsen_store/constant.dart';
import 'package:galsen_store/data.dart';
import 'package:galsen_store/staggered.dart';
import 'package:get/get.dart';

import 'home.dart';

class ChairPage extends StatefulWidget {
  const ChairPage({Key? key}) : super(key: key);

  @override
  State<ChairPage> createState() => _ChairPageState();
}

class _ChairPageState extends State<ChairPage> {
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
          "Galsen Store",
          style: TextStyle(color: Colors.black),
        ),
        leading: IconButton(
          onPressed: () {
            Get.to(const Home(),
                transition: Transition.rightToLeftWithFade,
                duration: const Duration(seconds: 2));
          },
          icon: const Icon(Icons.arrow_back_ios_new, color: Colors.black),
        ),
      ),
      body: SingleChildScrollView(
        child: Column(children: [
          SizedBox(
            height: height * .3,
            child: Stack(children: [
              Positioned(
                top: -20,
                right: 35,
                bottom: 10,
                child: SizedBox(
                  child: Image.asset("assets/images/chair33_bg.png"),
                ),
              ),
              Positioned(
                top: 20,
                left: 20,
                right: 150,
                bottom: 0,
                child: Column(
                  children: const [
                    Padding(
                      padding: EdgeInsets.all(8.0),
                      child: Align(
                        alignment: Alignment.centerLeft,
                        child: Text("wheelchair",
                            style:
                                TextStyle(fontSize: 20, color: kPrimaryColor)),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.all(8.0),
                      child: Align(
                        alignment: Alignment.centerLeft,
                        child: Text(
                            "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore.",
                            style:
                                TextStyle(fontSize: 16, color: kPrimaryColor)),
                      ),
                    ),
                  ],
                ),
              )
            ]),
          ),
          SizedBox(
            height: height * .06,
            child: const Align(
                alignment: Alignment.centerLeft,
                child: Padding(
                  padding: EdgeInsets.only(left: 15.0),
                  child: Text(
                    "All Chairs ",
                    style: TextStyle(fontSize: 18, color: kPrimaryColor),
                  ),
                )),
          ),
          SizedBox(
            child: StaggeredDualView(
              itemCount: chairs.length,
              itemBuilder: (context, index) => ChairItem(
                chair: chairs[index],
              ),
            ),
          )
        ]),
      ),
    );
  }
}
