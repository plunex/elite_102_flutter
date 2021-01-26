import 'dart:math';
import 'dart:ui';

import 'package:elite/pages/widgets/search_bar.dart';
import 'package:elite/pages/widgets/size_config.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';

class Unsplash extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: buildAppBar(context),
      backgroundColor: Colors.white,
      body: Container(
        margin: EdgeInsets.symmetric(horizontal: 20.0),
        child: Column(
          children: [
            SearchBar(
              icon: Icon(
                CupertinoIcons.search,
                color: Colors.grey,
              ),
              hintText: 'Search photos',
            ),
            Container(
              height: 20,
            ),
            Flexible(
              child: StaggeredGridView.countBuilder(
                crossAxisCount: 4,
                itemCount: 8,
                itemBuilder: (BuildContext context, int index) => Stack(
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Container(
                          color: Colors.green,
                          child: Image.asset('images/girl${index + 0}.jpeg'),
                        ),
                        Text(
                          'Black girl',
                          style: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        IntrinsicHeight(
                          child: Row(
                            children: [
                              Text(
                                '${Random().nextInt(1000)} likes',
                                style: TextStyle(
                                  fontSize: 16,
                                  color: Colors.grey[600],
                                ),
                              ),
                              VerticalDivider(
                                color: Colors.black,
                              ),
                              Text(
                                '${Random().nextInt(1000)} saves',
                                style: TextStyle(
                                  fontSize: 16,
                                  color: Colors.grey[600],
                                ),
                              ),
                            ],
                          ),
                        ),
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
                ),
                staggeredTileBuilder: (int index) =>
                    StaggeredTile.count(2, index == 0 ? 2.7 : 3.5),
                mainAxisSpacing: 4.0,
                crossAxisSpacing: 4.0,
              ),
            ),
          ],
        ),
      ),
    );
  }
}

// SearchBar(
// icon: Icon(
// CupertinoIcons.search,
// color: Colors.grey,
// ),
// hintText: 'Search photos',
// ),

AppBar buildAppBar(BuildContext context) {
  return AppBar(
    elevation: 0,
    backgroundColor: Colors.white,
    centerTitle: false,
    title: Text(
      'Today',
      style: TextStyle(
        color: Colors.black,
        fontSize: 30,
        fontWeight: FontWeight.bold,
      ),
    ),
    actions: [
      Padding(
        padding: const EdgeInsets.all(20.0),
        child: Text(
          'June 23',
          textAlign: TextAlign.end,
          style: TextStyle(
            color: Colors.grey[500],
            fontSize: 16,
          ),
        ),
      ),
    ],
  );
}
