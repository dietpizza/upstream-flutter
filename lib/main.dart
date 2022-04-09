import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Upstream',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        splashFactory: InkRipple.splashFactory,
      ),
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key, required this.title}) : super(key: key);
  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 1;

  void _incrementCounter() {
    setState(() {
      if (_counter < 1024 * 2 * 2 * 2 * 2 * 2 * 2 * 2 * 2 * 2 * 2 * 2 * 2 * 2 * 2 * 2 * 2 * 2 * 2) {
        _counter = _counter * 2;
      } else {
        _counter = 1;
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Bottom App Bar')),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      floatingActionButton: FloatingActionButton(
        child: const Icon(
          Icons.tiktok,
          color: Colors.white,
        ),
        elevation: 2,
        onPressed: _incrementCounter,
      ),
      body: Center(
        child: Text(
          _counter.toString(),
          style: const TextStyle(fontSize: 32, color: Colors.grey),
        ),
      ),
      bottomNavigationBar: BottomAppBar(
        shape: const CircularNotchedRectangle(),
        notchMargin: 2.0,
        child: Row(
          mainAxisSize: MainAxisSize.max,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
            IconButton(
              icon: const Icon(
                Icons.menu,
                color: Colors.blueGrey,
              ),
              onPressed: _incrementCounter,
            ),
            IconButton(
              icon: const Icon(
                Icons.save_rounded,
                color: Colors.orange,
              ),
              onPressed: _incrementCounter,
            ),
          ],
        ),
      ),
    );
  }
}
