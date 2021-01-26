import 'dart:math';

import 'package:elite/model/featured_model.dart';
import 'package:flutter/material.dart';

import 'category_tag_widget.dart';

class FeaturedWidget extends StatelessWidget {
  final FeaturedModel featuredModel;

  const FeaturedWidget({Key key, this.featuredModel}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var screen = MediaQuery.of(context).size;
    if (featuredModel.images.length == 1) {
      return Container(
        padding: EdgeInsets.only(left: 8, right: 8),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              width: screen.width,
              height: screen.width * 0.6,
              // color: Colors.blue,
              child: Image.asset(
                '${featuredModel.images[0]}',
                fit: BoxFit.cover,
              ),
            ),
            Text(
              'Black girl',
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
            ),
            Text(
              '${featuredModel.images.length} photos • ${featuredModel.description}',
              style: TextStyle(
                color: Colors.grey,
                fontSize: 18,
                fontWeight: FontWeight.bold,
              ),
            ),
            Container(
              height: 10,
            ),
            CategoryTagWidget(
              tags: featuredModel.tags,
            ),
            Container(
              height: 16,
            ),
          ],
        ),
      );
    } else if (featuredModel.images.length == 2) {
      return Container(
        padding: EdgeInsets.only(left: 8, right: 8),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              width: screen.width,
              height: screen.width * 0.6,
              // color: Colors.blue,
              child: Row(
                children: [
                  Container(
                    width: screen.width * 0.45,
                    height: screen.height * 0.5,
                    child: Image.asset(
                      '${featuredModel.images[0]}',
                      fit: BoxFit.cover,
                    ),
                  ),
                  Container(
                    width: 5,
                  ),
                  Container(
                    width: screen.width * 0.45,
                    height: screen.height * 0.5,
                    child: Image.asset(
                      '${featuredModel.images[1]}',
                      fit: BoxFit.cover,
                    ),
                  ),
                ],
              ),
            ),
            Text(
              'Black girl',
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
            ),
            Text(
              '${featuredModel.images.length} photos • ${featuredModel.description}  ',
              style: TextStyle(
                color: Colors.grey,
                fontSize: 18,
                fontWeight: FontWeight.bold,
              ),
            ),
            Container(
              height: 10,
            ),
            CategoryTagWidget(
              tags: featuredModel.tags,
            ),
            Container(
              height: 16,
            ),
          ],
        ),
      );
    } else if (featuredModel.images.length == 3) {
      return Container(
        padding: EdgeInsets.only(left: 8, right: 8),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              width: screen.width,
              height: screen.width * 0.6,
              // color: Colors.blue,
              child: Row(
                children: [
                  Container(
                    width: screen.width * 0.55,
                    height: screen.height * 0.5,
                    child: Image.asset(
                      '${featuredModel.images[0]}',
                      fit: BoxFit.cover,
                    ),
                  ),
                  Container(
                    width: 5,
                  ),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Container(
                        width: screen.width * 0.35,
                        height: screen.height * 0.13,
                        child: Image.asset(
                          '${featuredModel.images[1]}',
                          fit: BoxFit.cover,
                        ),
                      ),
                      Container(
                        width: screen.width * 0.35,
                        height: screen.height * 0.14,
                        child: Image.asset(
                          '${featuredModel.images[2]}',
                          fit: BoxFit.cover,
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
            Text(
              'Black girl',
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
            ),
            Text(
              '${featuredModel.imageCount} photos • ${featuredModel.description}  ',
              style: TextStyle(
                color: Colors.grey,
                fontSize: 18,
                fontWeight: FontWeight.bold,
              ),
            ),
            Container(
              height: 10,
            ),
            CategoryTagWidget(
              tags: featuredModel.tags,
            ),
            Container(
              height: 16,
            ),
          ],
        ),
      );
    }
  }
}

// Container(
// padding: EdgeInsets.only(left: 8, right: 8),
// child: Column(
// crossAxisAlignment: CrossAxisAlignment.start,
// children: [
// Container(
// width: screen.width,
// height: screen.width * 0.6,
// // color: Colors.blue,
// child: Row(
// children: [
// Container(
// width: screen.width * 0.55,
// height: screen.height * 0.5,
// child: Image.asset(
// '${featuredModel.images[0]}',
// fit: BoxFit.cover,
// ),
// ),
// Container(
// width: 5,
// ),
// Column(
// mainAxisAlignment: MainAxisAlignment.spaceBetween,
// children: [
// Container(
// width: screen.width * 0.35,
// height: screen.height * 0.13,
// child: Image.asset(
// '${featuredModel.images[1]}',
// fit: BoxFit.cover,
// ),
// ),
// Container(
// width: screen.width * 0.35,
// height: screen.height * 0.14,
// child: Image.asset(
// '${featuredModel.images[2]}',
// fit: BoxFit.cover,
// ),
// ),
// ],
// ),
// ],
// ),
// ),
// Text(
// 'Black girl',
// style: TextStyle(
// fontSize: 20,
// fontWeight: FontWeight.bold,
// ),
// ),
// Text(
// '${featuredModel.imageCount} photos • ${featuredModel.description}  ',
// style: TextStyle(
// color: Colors.grey,
// fontSize: 18,
// fontWeight: FontWeight.bold,
// ),
// ),
// Container(
// height: 10,
// ),
// CategoryTagWidget(
// tags: featuredModel.tags,
// ),
// Container(
// height: 16,
// ),
// ],
// ),
// );
