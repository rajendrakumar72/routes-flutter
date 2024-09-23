import 'package:flutter/material.dart';
import 'package:routes_task/second_screen.dart';

import 'fade_route.dart';

class MainScreen extends StatefulWidget {
  const MainScreen({super.key});

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Types of Routes'),
        backgroundColor: Colors.orange,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          mainAxisSize: MainAxisSize.min,
          children: [
            ElevatedButton(
              onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => const SecondScreen(data: 'Test',)),
                  );
              },
              child: const Text('Material Page Route'),
            ),
            const SizedBox(
              height: 20,
            ),
            ElevatedButton(
              onPressed: () {
                Navigator.pushNamed(context, '/second_screen');
              },
              child: const Text('Named Routes'),
            ),
            const SizedBox(
              height: 20,
            ),
            ElevatedButton(
              onPressed: () {
                print('Clicked Generate Routes');
                Navigator.pushNamed(context, '/second_screen', arguments: 'Hello!');
              },
              child: const Text('Generate Routes'),
            ),
            const SizedBox(
              height: 20,
            ),
            ElevatedButton(
              onPressed: () {
                Navigator.pushReplacement(
                  context,
                  MaterialPageRoute(builder: (context) => const SecondScreen(data: 'Test'),),
                );
              },
              child: const Text('Push Replacement'),
            ),
            const SizedBox(
              height: 20,
            ),
            ElevatedButton(
              onPressed: () {
                Navigator.pushAndRemoveUntil(
                  context,
                  MaterialPageRoute(builder: (context) => const SecondScreen(data: 'data')),
                      (Route<dynamic> route) => false,
                );
              },
              child: const Text('Push And Remove Until'),
            ),
            const SizedBox(
              height: 20,
            ),
            ElevatedButton(
              onPressed: () {
                Navigator.push(context, FadeRoute(page: const SecondScreen(data: 'Test',)));

              },
              child: const Text('Custom PageRoute'),
            ),
            const SizedBox(
              height: 20,
            ),
            ElevatedButton(
              onPressed: () {
                Hero(
                  tag: 'hero-tag',
                  child: Image.asset('sample.jpg'),
                );

                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const SecondScreen(data: 'Test',)),
                );
              },
              child: const Text('Hero Animations'),
            ),
          ],
        ),
      ),
    );
  }
}
