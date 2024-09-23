import 'package:flutter/material.dart';
import 'package:routes_task/main_screen.dart';
import 'package:routes_task/second_screen.dart';

void main() {
  runApp( MaterialApp(home: const MyApp(),
    initialRoute: '/main_screen',
    routes: {
      '/main_screen': (context) => const MainScreen(),
      '/second_screen': (context) => const SecondScreen(data: 'Test',),
    },
    onGenerateRoute: (settings) {
      if (settings.name == '/second_screen') {
        final args = settings.arguments as String;
        return MaterialPageRoute(
          builder: (context) {
            return SecondScreen(data: args);
          },
        );
      }
      return null; // Return null for unknown routes
    },),

  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const MainScreen(),
    );
  }
}


