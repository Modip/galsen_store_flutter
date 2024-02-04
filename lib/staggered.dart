import 'package:flutter/material.dart';
import 'package:galsen_store/constant.dart';
import 'data.dart';

class StaggeredDualView extends StatelessWidget {
  const StaggeredDualView(
      {Key? key, required this.itemBuilder, required this.itemCount})
      : super(key: key);
  final IndexedWidgetBuilder itemBuilder;
  final int itemCount;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 10.0),
      child: GridView.builder(
        shrinkWrap: true,
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2,
            childAspectRatio: 0.9,
            crossAxisSpacing: 5,
            mainAxisSpacing: 5),
        itemCount: chairs.length,
        physics: const BouncingScrollPhysics(),
        itemBuilder: (context, index) {
          return Transform.translate(
            offset: Offset(0.0, index.isOdd ? 70 : 0.0),
            child: itemBuilder(context, index),
          );
        },
      ),
    );
  }
}

class ChairItem extends StatelessWidget {
  const ChairItem({Key? key, required this.chair}) : super(key: key);
  final Chair chair;

  @override
  Widget build(BuildContext context) {
    return  Card(
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
      
    );
  }
}
