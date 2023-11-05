import 'package:flutter/material.dart';
import 'package:flutterinst/Appbar.dart';
import 'package:flutterinst/correction.dart';
import 'package:flutterinst/home.dart';
import 'package:flutterinst/profile.dart';

import 'navbar.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter INSTAGRAM',

      home: Botnavi()
    );
  }
}

