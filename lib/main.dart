import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Tips Calcul',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const TipsCalcul(),
    );
  }
}

class TipsCalcul extends StatefulWidget {
  const TipsCalcul({super.key});

  @override
  State<TipsCalcul> createState() => _TipsCalculState();
}

class _TipsCalculState extends State<TipsCalcul> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Tips calcul"),
        leading: const Text("hello"),
      ),
      body: Column(
        children: [
          Container(
              padding: EdgeInsets.all(16),
              decoration: BoxDecoration(
                color: Colors.deepPurple,
                borderRadius: BorderRadius.circular(10),
              ),
              child: const Column(
                children: [
                   Text("Total per Person"),
                   Text("\$20"),
                ],
              )),
        ],
      ),
    );
  }
}
