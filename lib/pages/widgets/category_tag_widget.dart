import 'package:flutter/material.dart';

class CategoryTagWidget extends StatelessWidget {
  final List<String> tags;
  final int minTagsCount;

  const CategoryTagWidget({
    Key key,
    @required this.tags,
    this.minTagsCount = 7,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Wrap(
        direction: Axis.horizontal,
        spacing: 8.0, // gap between adjacent chips
        runSpacing: 4.0, // gap between lines
        children: buildChildren(tags));
  }

  List<Widget> buildChildren(List<String> tags) {
    List<Widget> result = List<Widget>();

    if (tags.length < 7) {
      for (var i = 0; i < tags.length; i++) {
        result.add(new CategoryItemTag(
          text: tags[i],
        ));
      }
      return result;
    } else {
      for (var i = 0; i < minTagsCount; i++) {
        result.add(new CategoryItemTag(
          text: tags[i],
        ));
      }
      return result;
    }
  }
}

class CategoryItemTag extends StatelessWidget {
  final String text;

  const CategoryItemTag({
    Key key,
    @required this.text,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(10.0),
      decoration: BoxDecoration(
        color: Colors.white,
        border: Border.all(color: Colors.grey[400]),
      ),
      child: Text(
        '$text',
        style: TextStyle(
          color: Colors.grey[600],
        ),
      ),
    );
  }
}
