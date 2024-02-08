import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:galsen_store/constant.dart';
import 'package:galsen_store/detail_chaire.dart';
import 'package:get/get.dart';
import 'data.dart';

class StaggeredDualView extends StatelessWidget {
  const StaggeredDualView(
      {Key? key, required this.itemBuilder, required this.itemCount})
      : super(key: key);
  final IndexedWidgetBuilder itemBuilder;
  final int itemCount;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 10.0),
        child: MasonryGridView.builder(
            crossAxisSpacing: 0,
            shrinkWrap: true,
            // clipBehavior: Clip.none,
            mainAxisSpacing: 2,
            itemCount: chairs.length,
            gridDelegate: const SliverSimpleGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 2,
            ),
            itemBuilder: (context, index) {
              final chair = chairs[index];
              return GestureDetector(
                onTap: (() {
                  Get.to(() => DetailChairPage(chair: chair),
                      transition: Transition.fade,
                      duration: const Duration(seconds: 2));
                }),
                child: Column(
                  children: [
                    Card(
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(16)),
                      elevation: 6,
                      shadowColor: kPrimaryColor,
                      child: Column(
                        children: [
                          Image.asset(chair.image),
                          const SizedBox(
                            height: 5,
                          ),
                          Padding(
                            padding:
                                const EdgeInsets.symmetric(horizontal: 8.0),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [Text(chair.title), Text(chair.price)],
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Row(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: const [
                                Icon(
                                  Icons.star,
                                  color: Colors.amber,
                                  size: 22,
                                ),
                                Icon(
                                  Icons.star,
                                  color: Colors.amber,
                                  size: 22,
                                ),
                                Icon(
                                  Icons.star,
                                  color: Colors.amber,
                                  size: 22,
                                ),
                                Icon(
                                  Icons.star,
                                  color: Colors.amber,
                                  size: 22,
                                ),
                                Icon(
                                  Icons.star_border_outlined,
                                  color: Colors.amber,
                                  size: 22,
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              );
            }),
      ),
    );
  }
}

class ChairItem extends StatelessWidget {
  const ChairItem({Key? key, required this.chair}) : super(key: key);
  final Chair chair;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: (() {
        Get.to(() => DetailChairPage(chair: chair),
            transition: Transition.fade, duration: const Duration(seconds: 2));
      }),
      child: Card(
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(16)),
        elevation: 8,
        shadowColor: Colors.black,
        child: Column(
          children: [
            Expanded(
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Image.asset(chair.image),
              ),
            ),
            Expanded(
                child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 8.0),
                  child: Align(
                      alignment: Alignment.centerLeft,
                      child: Text(chair.title,
                          style: const TextStyle(
                              fontSize: 18, color: kPrimaryColor))),
                ),
                const SizedBox(
                  height: 3,
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(
                    horizontal: 8.0,
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(chair.color,
                          style: const TextStyle(
                              fontSize: 16, color: kPrimaryColor)),
                      Text(
                        chair.price,
                        style:
                            const TextStyle(fontSize: 16, color: kPrimaryColor),
                      ),
                    ],
                  ),
                ),
                const SizedBox(
                  height: 12,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: const [
                    Icon(
                      Icons.star,
                      color: Colors.amber,
                    ),
                    Icon(Icons.star, color: Colors.amber),
                    Icon(Icons.star, color: Colors.amber),
                    Icon(Icons.star, color: Colors.amber),
                    Icon(
                      Icons.star_border_outlined,
                      color: Colors.amber,
                    ),
                  ],
                ),
              ],
            )),
          ],
        ),
      ),
    );
  }
}
