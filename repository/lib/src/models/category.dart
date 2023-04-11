import 'package:flutter/material.dart';

class Category {
  const Category({
    required this.name,
    required this.color,
    required this.icon,
    required this.entryCount,
  });

  final String name;
  final Color color;
  final IconData icon;
  final int entryCount;
}
