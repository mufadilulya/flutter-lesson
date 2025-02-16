import 'package:apilsn/presentation/menu_screen.dart';
import 'package:apilsn/presentation/users/provider/user_provider.dart';
import 'package:apilsn/presentation/users/ui/user_screen.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(
    MultiProvider(
      providers: [
        ChangeNotifierProvider(
          create: (context) => UserProvider(),
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
        '/users': (context) => UserScreen(),
      },
    );
  }
}
