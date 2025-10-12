import 'package:flutter/material.dart';
import '../core/resources/route_manager.dart';

class Myapp extends StatelessWidget {
  const Myapp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      darkTheme: ThemeData.dark(),
      routes: RouteManager.routes,
      initialRoute: RouteNames.onBoarding,
    );
  }
}
