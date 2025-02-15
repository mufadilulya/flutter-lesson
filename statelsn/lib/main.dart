import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:statelsn/presentation/menu_screen.dart';
import 'package:statelsn/presentation/todolist/provider/todolist_provider.dart';
import 'package:statelsn/presentation/todolist/ui/todolist_screen.dart';
import 'package:statelsn/presentation/triangle_area/provider/triangle_provider.dart';
import 'package:statelsn/presentation/triangle_area/ui/triangle_area_screen.dart';

void main() {
  runApp(
    MultiProvider(
      providers: [
        ChangeNotifierProvider(
          create: (context) => TodolistProvider(),
        ),
        ChangeNotifierProvider(
          create: (context) => TriangleProvider(),
        )
      ],
      child: App(),
    ),
  );
}

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      initialRoute: '/',
      routes: {
        '/': (context) => MenuScreen(),
        '/todolist': (context) => TodolistScreen(),
        '/triangle': (context) => TriangleAreaScreen(),
      },
    );
  }
}
