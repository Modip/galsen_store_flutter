import 'package:flutter/material.dart';
import 'package:galsen_store/constant.dart';
import 'package:galsen_store/data.dart';
import 'package:get/get.dart';

class DetailChairPage extends StatefulWidget {
  const DetailChairPage({Key? key, required this.chair}) : super(key: key);
  final Chair chair;

  @override
  State<DetailChairPage> createState() => _DetailChairPageState();
}

List mycolors = [Colors.blue, Colors.green, Colors.yellow, Colors.red];

Color primaryColor = mycolors[0];

class _DetailChairPageState extends State<DetailChairPage> {
  int myCurrentIndex = 0;
  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    return Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          backgroundColor: kBackgroundColor,
          elevation: 0,
          centerTitle: true,
          title: const Text(
            "Galsen Store",
            style: TextStyle(color: Colors.black),
          ),
          leading: IconButton(
            onPressed: () {
              Get.back();
            },
            icon: const Icon(Icons.arrow_back_ios_new, color: Colors.black),
          ),
        ),
        body: Column(
          children: [
            SizedBox(
              height: 300,
              child: Center(
                child: ColorFiltered(
                  colorFilter: ColorFilter.mode(primaryColor, BlendMode.hue),
                  child: Container(
                    color: Colors.white,
                    child: Image.asset(
                      widget.chair.image,
                      fit: BoxFit.contain,
                    ),
                  ),
                ),
              ),
            ),
            Container(
              padding: const EdgeInsets.only(left: 15, right: 15),
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      SizedBox(
                        width: width * .3,
                        child: const Align(
                          alignment: Alignment.bottomLeft,
                          child: Text(
                            "Colors",
                            style: TextStyle(fontSize: 20),
                          ),
                        ),
                      ),
                      SizedBox(
                        child: Row(
                          children: [
                            for (var i = 0; i < 4; i++)
                              builContainerColor(mycolors[i]),
                          ],
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  const Align(
                    alignment: Alignment.centerLeft,
                    child: Text("Gamer Black and your choice",
                        style: TextStyle(
                            fontSize: 18, fontWeight: FontWeight.w500)),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  Row(
                    children: const [
                      Icon(
                        Icons.star,
                        color: Colors.amber,
                      ),
                      Icon(Icons.star, color: Colors.amber),
                      Icon(Icons.star, color: Colors.amber),
                      Icon(Icons.star_half, color: Colors.amber),
                      Icon(
                        Icons.star_border_outlined,
                        color: Colors.amber,
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: 15,
                  ),
                  const Text(
                    "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt magna aliqua,ut labore et dolore magna aliqua.eiusmod tempor incididunt ut labore et dolore magna aliqua.eiusmod tempor incididunt ut labore et dolore.",
                    style: TextStyle(fontSize: 17, fontWeight: FontWeight.w300),
                  ),
                  const SizedBox(
                    height: 30,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      InkWell(
                        onTap: () {
                          debugPrint("Tapped");
                        },
                        child: Container(
                            height: 40,
                            width: 90,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(12)),
                            child: Align(
                              alignment: Alignment.centerLeft,
                              child: Text(
                                widget.chair.price,
                                style: const TextStyle(
                                    color: kPrimaryColor,
                                    fontSize: 28,
                                    fontWeight: FontWeight.w500),
                              ),
                            )),
                      ),
                      InkWell(
                        onTap: (() {}),
                        child: Container(
                          height: 40,
                          width: 100,
                          margin: const EdgeInsets.only(right: 20),
                          padding: const EdgeInsets.all(10),
                          decoration: BoxDecoration(
                              border: Border.all(color: kPrimaryColor),
                              color: kBackgroundColor,
                              borderRadius: BorderRadius.circular(10)),
                          child: const Text("Add to Cart",
                              style: TextStyle(
                                  color: kPrimaryColor,
                                  fontWeight: FontWeight.w500)),
                        ),
                      ),
                    ],
                  )
                ],
              ),
            ),
          ],
        ));
  }

  builContainerColor(Color myColor) => SizedBox(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Stack(
              children: [
                Positioned(
                  top: 12,
                  left: 12,
                  child: Icon(
                    Icons.check,
                    size: 25,
                    color:
                        primaryColor == myColor ? myColor : Colors.transparent,
                  ),
                ),
                Positioned(
                  child: IconButton(
                    onPressed: () {
                      setState(() {
                        primaryColor = myColor;
                      });
                    },
                    icon: Icon(
                      Icons.circle,
                      size: 35,
                      color: myColor.withOpacity(.5),
                    ),
                  ),
                )
              ],
            )
          ],
        ),
      );
}
