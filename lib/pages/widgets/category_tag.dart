import 'package:elite/pages/widgets/size_config.dart';
import 'package:flutter/material.dart';

class CategoryTag extends StatelessWidget {
  final String text;
  const CategoryTag({
    Key key,
    @required this.categories,
    this.text,
  }) : super(key: key);

  final List categories;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: SizeConfig.height(25.0),
      decoration: BoxDecoration(
        color: Colors.white,
        border: Border.all(color: Colors.grey[400]),
      ),
      child: Padding(
        padding: const EdgeInsets.all(10.0),
        child: Text(
          '$text',
          style: TextStyle(
            color: Colors.grey[600],
          ),
        ),
      ),
    );
  }
}
