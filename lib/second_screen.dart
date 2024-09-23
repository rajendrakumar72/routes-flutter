import 'package:flutter/material.dart';



class SecondScreen extends StatelessWidget {
  const SecondScreen({super.key, required String data});

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.orange,
        leading: IconButton(
          icon: const Icon(Icons.arrow_back),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
      ),
      body:  Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          mainAxisSize: MainAxisSize.min,
          children: [
            Hero(tag: 'hero-tag', child: Image.asset('assets/images/sample.jpg'),),
            const Text('Second Screen',style: TextStyle(color: Colors.black,
            fontSize: 20),),
          ],
        ),
      ),
    );
  }
}
