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
    return Container(
      padding: EdgeInsets.only(left: 8, right: 8),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            width: screen.width,
            height: screen.width * 0.6,
            color: Colors.blue,
          ),
          Container(
            height: 16,
          ),
          Text(
            'Black girl',
            style: TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.bold,
            ),
          ),
          Container(
            height: 16,
          ),
          Text(
            '${featuredModel.imageCount} photos. ${featuredModel.description}  ',
            style: TextStyle(
              color: Colors.grey,
              fontSize: 18,
              fontWeight: FontWeight.bold,
            ),
          ),
          Container(
            height: 16,
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
