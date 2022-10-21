import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:uidelojadesupermercados/pages/cart_page.dart';
import 'package:uidelojadesupermercados/pages/item_page.dart';

import 'pages/home_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  
  @override
  void initState() {
    SystemChrome.setEnabledSystemUIMode(SystemUiMode.immersiveSticky);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        scaffoldBackgroundColor: const Color(0xFFF7F5F8),
        primarySwatch: Colors.blue,
      ),
      debugShowCheckedModeBanner: false,
      
      routes: {
        "/":(context) => const HomePage(),
        "itemPage":(context) => const ItemPage(),
        "cartPage":(context) => const CartPage(),
      },
    );
  }
}


