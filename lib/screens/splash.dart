// import 'dart:async';
// import 'package:flutter/material.dart';
// import 'package:fluttergraphql/screens/home_page.dart';
// import 'package:get/get.dart';

// class Splash extends StatefulWidget {
//   const Splash({super.key});

//   @override
//   State<Splash> createState() => _SplashState();
// }

// class _SplashState extends State<Splash> {
//   @override

//   void initState(){
//     super.initState();
//     Timer(const Duration(seconds: 3), () => Get.to(MyHomePage()));
//   }
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: Container(
//         width: double.infinity,
//         height: double.infinity,
//         decoration: const BoxDecoration(
//           color: Color(0xFF00AFCA),
//         ),
//         // child: Image.asset("images/splash.png"),
//       ),
//     );
//   }
// }