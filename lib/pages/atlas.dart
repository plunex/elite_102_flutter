import 'package:elite/model/featured_model.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Atlas extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: buildAppBar(context),
      body: ListView.builder(
        itemCount: featuredModelList.length,
        itemBuilder: (context, index) {
          return ListTile(
            title: Text('${[index]}'),
          );
        },
      )
    );
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
