import 'package:elite/pages/widgets/size_config.dart';
import 'package:flutter/material.dart';

class Mina extends StatelessWidget {
  List categories = ['Plants', 'Animals', 'Food', 'Scape', 'Leaves'];
  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return Scaffold(
      appBar: buildAppBar(context),
      backgroundColor: Colors.white,
      body: Container(
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
