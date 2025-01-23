import 'package:flutter/material.dart';

import 'views/home_view.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: HomeView.routeName,
      routes: {HomeView.routeName: (context) => HomeView()},
    );
  }
}
