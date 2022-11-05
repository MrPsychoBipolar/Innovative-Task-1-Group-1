// ignore_for_file: use_build_context_synchronously

import 'package:flutter/material.dart';
import 'main_page.dart';

class LoadingScreen extends StatefulWidget {
  const LoadingScreen({Key? key}) : super(key: key);

  @override
  State<LoadingScreen> createState() => _LoadingScreenState();
}

class _LoadingScreenState extends State<LoadingScreen> {
  @override
  void initState() {
    super.initState();
    _toMainPageScreen();
  }

  _toMainPageScreen() async {
    await Future.delayed(const Duration(milliseconds: 3000), () {});
    Navigator.pushReplacement(context,
        MaterialPageRoute(builder: (context) => const PrimaryAppLayout()));
  }

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Positioned(
          height: (MediaQuery.of(context).size.height),
          width: (MediaQuery.of(context).size.width),
          child: Container(
            decoration: const BoxDecoration(
              color: Color.fromRGBO(243, 243, 244, 1.0),
            ),
          ),
        ),
        Positioned(
          height: (MediaQuery.of(context).size.height),
          width: (MediaQuery.of(context).size.width),
          child: Container(
            decoration: const BoxDecoration(
              image: DecorationImage(
                  image: AssetImage('assets/logo_1080.png'),fit: BoxFit.cover,),
            ),
          ),
        ),
      ],
    );
  }
}
