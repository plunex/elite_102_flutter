import 'dart:math';

import 'package:elite/model/featured_model.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'widgets/featured_widget.dart';
import 'widgets/size_config.dart';

class Atlas extends StatelessWidget {
  final featuredModelList = [
    FeaturedModel(
      imageCount: 3,
      images: [
        "images/girl${Random().nextInt(9)}.jpeg",
        // "images/girl${Random().nextInt(9)}.jpeg",
        // "images/girl${Random().nextInt(9)}.jpeg",
      ],
      category: "Sunny beach",
      description: "Curated by landscape",
      tags: ["Wave", "Sea", "Wallpaper"],
    ),
    FeaturedModel(
      imageCount: 2,
      images: [
        "images/girl${Random().nextInt(9)}.jpeg",
        "images/girl${Random().nextInt(9)}.jpeg",
        // "images/girl${Random().nextInt(9)}.jpeg",
      ],
      category: "Sunny beach",
      description: "Curated by Leesie Ardrey",
      tags: ["Growth", "Flower", "Bloosom"],
    ),
    FeaturedModel(
      imageCount: 3,
      images: [
        "images/girl${Random().nextInt(9)}.jpeg",
        "images/girl${Random().nextInt(9)}.jpeg",
        "images/girl${Random().nextInt(9)}.jpeg",
      ],
      category: "Sunny beach",
      description: "Curated by Leesie Ardrey",
      tags: ["Growth", "Flower", "Bloosom"],
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: buildAppBar(context),
        body: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 10.0),
          child: ListView.builder(
            shrinkWrap: true,
            itemCount: featuredModelList.length,
            itemBuilder: (context, index) {
              return FeaturedWidget(
                featuredModel: featuredModelList[index],
              );
            },
          ),
        ));
  }
}

AppBar buildAppBar(BuildContext context) {
  return AppBar(
    elevation: 0,
    backgroundColor: Colors.white,
    centerTitle: false,
    title: Text(
      'Featured',
      style: TextStyle(
        color: Colors.black,
        fontSize: 30,
        fontWeight: FontWeight.bold,
      ),
    ),
    actions: [
      Padding(
        padding: const EdgeInsets.all(20.0),
        child: Icon(
          CupertinoIcons.search,
          color: Colors.black,
        ),
      ),
    ],
  );
}
