import 'package:flutter/material.dart';
import 'package:flutter_remix/flutter_remix.dart';
import 'package:google_fonts/google_fonts.dart';

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
      debugShowCheckedModeBanner: false,
      themeMode: ThemeMode.dark,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSwatch().copyWith(
          primary: Colors.blue.shade800,
          secondary: Colors.blue.shade700,
        ),
        highlightColor: Colors.transparent,
        splashFactory: InkRipple.splashFactory,
        // splashFactory: MaterialInkSplash.splashFactory,
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
  int _counter = 0;

  void _incrementCounter(int n) {
    setState(() {
      _counter = n;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: Center(
          child: Text(
        'Screen ${_counter + 1}',
        style: GoogleFonts.nunito(fontSize: 36, color: Colors.white),
      )),
      bottomNavigationBar: Theme(
        data: ThemeData(
          splashColor: Colors.transparent,
          highlightColor: Colors.transparent,
        ),
        child: Container(
          color: const Color(0x09ffffff),
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 40, vertical: 5),
            child: BottomNavigationBar(
              showUnselectedLabels: false,
              showSelectedLabels: false,
              selectedIconTheme: const IconThemeData(size: 24),
              selectedItemColor: Colors.grey.shade300,
              unselectedItemColor: Colors.grey.shade600,
              currentIndex: _counter,
              elevation: 0,
              onTap: (index) => setState(() => _counter = index),
              backgroundColor: Colors.transparent,
              items: const [
                BottomNavigationBarItem(
                  tooltip: '',
                  activeIcon: Icon(FlutterRemix.home_fill),
                  icon: Icon(FlutterRemix.home_line),
                  label: 'Tab1',
                ),
                BottomNavigationBarItem(
                  tooltip: '',
                  activeIcon: Icon(FlutterRemix.search_fill),
                  icon: Icon(FlutterRemix.search_line),
                  label: 'Tab2',
                ),
                BottomNavigationBarItem(
                  tooltip: '',
                  activeIcon: Icon(FlutterRemix.settings_fill),
                  icon: Icon(FlutterRemix.settings_line),
                  label: 'Tab3',
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
