import 'package:flutter/material.dart';
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
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.blue),
        useMaterial3: true,
      ),
      home: const HomePage(),
    );
  }
}
