import 'package:flutter/material.dart';
import 'package:habit_now_clone/app/app_bar/app_bar.dart';
import 'package:habit_now_clone/app/bottom_app_bar/app_bottom_bar.dart';
import 'package:habit_now_clone/app/drawer/app_drawer.dart';

class AppScaffold extends StatelessWidget {
  const AppScaffold(this.child, {super.key});

  final Widget child;

  @override
  Widget build(BuildContext context) => Scaffold(
        appBar: const CustomAppBar(),
        drawer: const CustomAppDrawer(),
        bottomNavigationBar: const CustomBottomAppBar(),
        floatingActionButton: _buildFloatingActionButton(),
        floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
        body: child,
      );

  FloatingActionButton _buildFloatingActionButton() => FloatingActionButton(
        onPressed: () {},
        child: const Icon(Icons.add),
      );
}
