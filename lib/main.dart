// import 'package:experimental/providers/provider_data.dart';
import 'package:flutter/material.dart';
// import 'package:provider/provider.dart';

import 'DataBase.dart';
import 'categoryItem.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: First(),
    );
  }
}

class First extends StatefulWidget {
  @override
  _FirstState createState() => _FirstState();
}

class _FirstState extends State<First> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text("Experimental"),
      ),
      body: GridView(
        padding: EdgeInsets.all(20),
        children: MY_FRIENDS
            .map(
              (catData) => CategoryItem(catData.id, catData.name, catData.color,
                  catData.gender, catData.image, catData.icon),
            )
            .toList(),
        gridDelegate: SliverGridDelegateWithMaxCrossAxisExtent(
          maxCrossAxisExtent: 300,
          childAspectRatio: 3 / 2,
          crossAxisSpacing: 20,
          mainAxisSpacing: 20,
        ),
      ),
    );
  }
}
