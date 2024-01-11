import 'package:financial_app_ui/view/home_page.dart';
import 'package:flutter/material.dart';

//import 'view/home_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Financial App UI",
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        useMaterial3: false,
      ),
      // home: const Transfer(),
      home: const HomePage(),
    );
  }
}
