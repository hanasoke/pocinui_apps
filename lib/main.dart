import 'package:flutter/material.dart';
import 'package:pocinui/pages/main_navigation.dart';
import 'pages/home_page.dart';

void main() {
  runApp(const PocinuiApp());
}

class PocinuiApp extends StatelessWidget {
  const PocinuiApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Pocinui',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.blue),
        useMaterial3: true,
      ),
      home: const MainNavigation(),
    );
  }
}
