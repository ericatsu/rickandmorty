import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:rickandmorty/widgets/bottom_nav.dart';

class MainPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final user = Get.arguments as Map<String, dynamic>;

    return Scaffold(
      body: BottomNav(user: user),
    );
  }
}
