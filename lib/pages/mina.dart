import 'dart:math';

import 'package:elite/pages/widgets/category_tag_widget.dart';
import 'package:elite/pages/widgets/size_config.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Mina extends StatelessWidget {
  List<String> categories = ['Plants', 'Animals', 'Food', 'Scape', 'Leaves'];

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return Scaffold(
      appBar: buildAppBar(context),
      backgroundColor: Colors.white,
      body: Column(
        children: [
          Container(
            margin: EdgeInsets.symmetric(horizontal: 20.0),
            child: Container(
              height: SizeConfig.height(34.0),
              child: ListView.builder(
                itemCount: categories.length,
                scrollDirection: Axis.horizontal,
                itemBuilder: (context, index) {
                  return Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Container(
                      height: SizeConfig.height(33.0),
                      decoration: BoxDecoration(
                        color: index == 0 ? Colors.black : Colors.white,
                        border: Border.all(color: Colors.grey[400]),
                      ),
                      child: Padding(
                        padding: const EdgeInsets.all(10.0),
                        child: Text(
                          '${categories[index]}',
                          style: TextStyle(
                            color: index == 0 ? Colors.white : Colors.grey[600],
                          ),
                        ),
                      ),
                    ),
                  );
                },
              ),
            ),
          ),
          Container(height: 10),
          Flexible(
            fit: FlexFit.loose,
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 30),
              child: ListView.builder(
                itemCount: 6,
                itemBuilder: (context, index) {
                  return Stack(
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Image.asset('images/girl${index + 0}.jpeg'),
                          Container(height: 15),
                          Text(
                            'Black girl',
                            style: TextStyle(
                              fontSize: 20,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          Container(height: 5),
                          CategoryTagWidget(
                            tags: categories,
                            minTagsCount: 3,
                          )
                          // Row(
                          //   children: [
                          //     Padding(
                          //       padding: const EdgeInsets.only(right: 8.0),
                          //       child: CategoryTagWidget(
                          //         tags: categories,
                          //       ),
                          //     ),
                          //     Padding(
                          //       padding: const EdgeInsets.only(right: 8.0),
                          //       child: CategoryTagWidget(
                          //         text: categories[
                          //         Random().nextInt(categories.length)],
                          //       ),
                          //     ),
                          //     Padding(
                          //       padding: const EdgeInsets.only(right: 8.0),
                          //       child: CategoryTagWidget(
                          //         text: categories[
                          //         Random().nextInt(categories.length)],
                          //       ),
                          //     ),
                          //   ],
                          // ),
                          ,
                          Container(height: 40),
                        ],
                      ),
                      Positioned(
                        right: SizeConfig.width(5),
                        top: SizeConfig.height(5),
                        child: Icon(
                          CupertinoIcons.heart_circle_fill,
                          color: Colors.white,
                        ),
                      ),
                    ],
                  );
                },
              ),
            ),
          ),
        ],
      ),
    );
  }
}

AppBar buildAppBar(BuildContext context) {
  return AppBar(
    elevation: 0,
    backgroundColor: Colors.white,
    title: Text(
      'Plants',
      style: TextStyle(
        color: Colors.black,
        fontWeight: FontWeight.bold,
      ),
    ),
  );
}
