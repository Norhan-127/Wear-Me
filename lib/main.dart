import 'package:flutter/material.dart';
import 'package:wear_me/core/router/app_routes.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      title: 'Wear Me ',
      routerConfig: AppRouters.router,
    );
  }
}
