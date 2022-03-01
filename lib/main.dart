import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:travel_app_ui/models/swip_text.dart';

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
        fontFamily: "QuickSand",
        textTheme: ThemeData.light().textTheme.copyWith(
              headline6: const TextStyle(
                  fontFamily: "QuickSand",
                  fontWeight: FontWeight.bold,
                  fontSize: 18),
              button: const TextStyle(color: Colors.white),
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
    return Scaffold(
        body: Padding(
      padding: const EdgeInsets.all(30),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          const Image(
            image: AssetImage("assets/images/humans.png"),
          ),
          const SizedBox(
            height: 40,
          ),
          const Text(
            "Discover a Hotel & Resort to Book a Suitable Room",
            style: TextStyle(
                fontSize: 24,
                fontFamily: "Gordita",
                fontWeight: FontWeight.w600),
            textAlign: TextAlign.center,
          ),
          const SizedBox(
            height: 10,
          ),
          Text(
            swipText[0],
            style: const TextStyle(fontSize: 14, fontFamily: "Gordita",height: 1.5),
            textAlign: TextAlign.center,
          ),
          const SizedBox(
            height: 15,
          ),
          SizedBox(
            width: 250,
            height: 50,
            child: Directionality(
              textDirection: TextDirection.rtl,
              child: ElevatedButton.icon(
                onPressed: () {
                  print("clicked");
                },
                label: const Text(
                  "Get Started",
                  style: TextStyle(color: Colors.white,fontSize: 20,fontWeight: FontWeight.bold),
                ),
                icon: const Icon(FontAwesomeIcons.arrowRight, color: Colors.white,size: 22,),
                style: ElevatedButton.styleFrom(
                  elevation: 10,
                  primary: Color.fromARGB(255, 240, 89, 34),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10.0),
                  ),
                ),
              ),
            ),
          )
        ],
      ),
    ) // This trailing comma makes auto-formatting nicer for build methods.
        );
  }
}
