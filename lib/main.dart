

import 'package:flutter/material.dart';
import 'loading_screen.dart';

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    title: 'Practice',
    theme: ThemeData(
      splashColor: Colors.blue,
      primarySwatch: Colors.blue,

    ),
    home: const LoadingScreen(),
  )
  );
}