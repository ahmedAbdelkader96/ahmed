import 'package:flutter/material.dart';

class Category {
  final String id;
  final String name;
  final Color color;
  final String gender ;
  final String image ;
  final Icon icon ;

  const Category({
    required this.id,
    required this.name,
    this.color = Colors.orange,
    required this.gender,
    required this.image,
    required this.icon
  });
}
