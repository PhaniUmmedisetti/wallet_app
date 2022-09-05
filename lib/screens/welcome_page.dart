import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:wallet_appp/screens/bottom_nav_bar.dart';
import 'package:wallet_appp/screens/home.dart';
import 'package:wallet_appp/screens/settings.dart';

class FirstPage extends StatelessWidget {
  const FirstPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Center(
            child: TextButton(
      onPressed: () {
        Get.to(() => BottomNavBar());
      },
      child: Text(
        "Welcome!",
        style: Theme.of(context).textTheme.bodyLarge?.copyWith(
            fontFamily: 'Inter',
            fontSize: 32,
            fontWeight: FontWeight.w900,
            color: Colors.black),
        // style: GoogleFonts.inter(
        //   fontSize: 32,
        //   fontWeight: FontWeight.w900,
        //   color: Colors.black,
        // ),
      ),
    )));
  }
}


// child: TextButton(
      //   "Welcome!",
      //   style: TextStyle(fontWeight: FontWeight.bold, fontSize: 45),
      // ),