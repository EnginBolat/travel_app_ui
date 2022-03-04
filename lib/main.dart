import 'package:flutter/material.dart';
import 'package:travel_app_ui/widget/start_page/start_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Travel App',
      theme: ThemeData(
        primarySwatch: Colors.orange,
        fontFamily: "Gordita",
        textTheme: ThemeData.light().textTheme.copyWith(
              headline6: const TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 18,
                  fontFamily: "Gordita"),
              headline5: const TextStyle(
                  fontFamily: "Gordita",
                  fontWeight: FontWeight.bold,
                  fontSize: 24),
              headline4: const TextStyle(
                  fontFamily: "Gordita",
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                  fontSize: 24),
              headline3: const TextStyle(
                fontFamily: "Gordita",
                color: Colors.white,
                fontSize: 18,
              ),
              headline2: const TextStyle(
                fontFamily: "Gordita",
                color: Colors.white,
                fontWeight: FontWeight.bold,
                fontSize: 15,
              ),
              headline1: const TextStyle(
                fontFamily: "Gordita",
                color: Colors.black,
                fontWeight: FontWeight.bold,
                fontSize: 15,
              ),
              bodyText1: const TextStyle(
                fontSize: 16,
                fontFamily: "Gordita",
                color: Colors.orange,
              ),
              bodyText2: const TextStyle(
                fontSize: 14,
                fontFamily: "Gordita",
                height: 1.5,
              ),
              subtitle2: const TextStyle(
                color: Colors.grey,
                fontSize: 16,
                height: 1.2,
                fontFamily: "Gordita",
              ),
              subtitle1: const TextStyle(
                fontSize: 18,
                fontFamily: "Gordita",
                fontWeight: FontWeight.bold,
                color: Color.fromRGBO(99, 99, 99, 11),
              ),
              button: const TextStyle(
                fontFamily: "Gordita",
                color: Colors.white,
                fontWeight: FontWeight.w600,
                fontSize: 18,

              )
            ),
      ),
      home: const MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: HomeScreen(),
    );
  }
}
