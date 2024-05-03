import 'package:flutter/material.dart';
import 'package:rexam/Addtocart.dart';
import 'package:rexam/DetailPage.dart';
import 'package:rexam/HomePage.dart';

void main()
{
  runApp(MyEcomApp());
}
class MyEcomApp extends StatelessWidget {
  const MyEcomApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      routes:
      {
        "/":(context) => HomePage(),
        "/dt":(context) => DeatilPage(),
        "/add":(context) => Addtocart(),
      },
    );
  }
}

