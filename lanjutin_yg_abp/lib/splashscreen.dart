import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:slicing_amora/login.dart';

class Splashscreen extends StatefulWidget {
  const Splashscreen({super.key});

  @override
  State<Splashscreen> createState() => _SplashscreenState();
}

class _SplashscreenState extends State<Splashscreen> {
  @override
  void initState() {
    super.initState();
    Future.delayed(Duration(milliseconds: 400), () {
      Navigator.pushReplacement(
        context,
        MaterialPageRoute(
          builder: (context) {
            return Login();
          },
        ),
      );
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(color: Color(0xff242B47)),
        child: Center(child: SvgPicture.asset("assets/splashscreen.svg")),
      ),
    );
  }
}
