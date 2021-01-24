import 'package:flutter/material.dart';

class FeaturedWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container();
  }
}

class FeaturedTagWidget extends StatelessWidget {
  final String title;

  const FeaturedTagWidget({Key key, this.title}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Text(title),
    );
  }
}
