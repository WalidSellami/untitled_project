// import 'dart:developer';

import 'package:flutter/material.dart';
// import 'package:app_links/app_links.dart';

void main() {

  WidgetsFlutterBinding.ensureInitialized();

  // final appLinks = AppLinks();
  // final sub = appLinks.uriLinkStream.listen((uri) {
  //   log(uri.toString());
  // });

  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo App',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}


class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int counter = 0;

  void incrementCounter() {
    setState(() {
      counter++;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: Text(widget.title),
      ),
      body: Center(
        child: Text.rich(
          TextSpan(
            children: [
              TextSpan(
                text: 'Number of times clicked: ',
              ),
              TextSpan(
                text: '$counter',
                style: TextStyle(
                  fontSize: 16.0,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ]
          ),
          style: Theme.of(context).textTheme.headlineMedium,
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      floatingActionButton: FloatingActionButton(
        clipBehavior: Clip.antiAlias,
        enableFeedback: true,
        heroTag: 'increment',
        onPressed: incrementCounter,
        tooltip: 'Increment',
        backgroundColor: Colors.blue.shade700,
        child: const Icon(Icons.add, color: Colors.white),
      ),
    );
  }
}
