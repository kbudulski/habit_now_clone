import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:repository/repository.dart';

List<Category> categoriesList = <Category>[
  taskCategory,
  quitBadHabitCategory,
  studyCategory,
  sportsCategory,
  healthCategory,
  homeCategory,
  financeCategory,
  outdoorCategory,
];

List<Category> customCategoriesList = <Category>[
  gardenCategory,
  booksCategory,
];

const Category taskCategory = Category(
  name: 'Task',
  color: Colors.pink,
  icon: Icons.schedule,
  entryCount: 2,
);

const Category quitBadHabitCategory = Category(
  name: 'Quit a bad habit',
  color: Colors.red,
  icon: Icons.not_interested,
  entryCount: 1,
);

const Category studyCategory = Category(
  name: 'Study',
  color: Colors.deepPurple,
  icon: Icons.school,
  entryCount: 2,
);

const Category sportsCategory = Category(
  name: 'Sports',
  color: Colors.orange,
  icon: Icons.fitness_center,
  entryCount: 4,
);

const Category healthCategory = Category(
  name: 'Health',
  color: Colors.lightGreen,
  icon: FontAwesomeIcons.plus,
  entryCount: 1,
);

const Category homeCategory = Category(
  name: 'Home',
  color: Colors.brown,
  icon: Icons.home,
  entryCount: 1,
);

const Category financeCategory = Category(
  name: 'Finance',
  color: Colors.teal,
  icon: Icons.attach_money,
  entryCount: 1,
);

const Category outdoorCategory = Category(
  name: 'Outdoor',
  color: Colors.green,
  icon: Icons.terrain,
  entryCount: 1,
);
const Category gardenCategory = Category(
  name: 'Garden',
  color: Colors.lightGreen,
  icon: Icons.grass,
  entryCount: 0,
);
const Category booksCategory = Category(
  name: 'Books',
  color: Colors.deepOrange,
  icon: Icons.auto_stories,
  entryCount: 0,
);
