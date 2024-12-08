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
    var theme = Theme.of(context);
    // Add style
    final style = theme.textTheme.titleMedium!.copyWith(
      color: theme.colorScheme.onPrimary,
      fontWeight: FontWeight.bold
    );

    return Scaffold(
      appBar: AppBar(title: const Text("Tips calcul")),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Container(
              margin: const EdgeInsets.all(20),
              padding: const EdgeInsets.all(16),
              decoration: BoxDecoration(
                //color: Colors.deepPurple,
                color: theme.colorScheme.inversePrimary,
                borderRadius: BorderRadius.circular(10),
              ),
              child:  Column(
                children: [
                  Text("Total per Person",
                  style: style,
                  ),
                  Text("\$20.89",
                  style: style.copyWith(
                    color: theme.colorScheme.onPrimary,
                    fontSize: theme.textTheme.displaySmall?.fontSize
                  ),
                  ),
                ],
              )
              ),
        ],
      ),
    );
  }
}
