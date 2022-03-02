import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import '../widget/bottom_navigation_bar.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

var nameStyle = const TextStyle(
  fontSize: 18.0,
);

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 245, 245, 245),
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0.0,
      ),
      body: Column(
        children: <Widget>[
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 40.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  children: const [
                    SizedBox(
                      height: 50,
                      width: 50,
                      child: CircleAvatar(
                        backgroundImage: AssetImage("assets/images/humans.png"),
                      ),
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    Text("Hello,"),
                    SizedBox(
                      width: 2.0,
                    ),
                    Text(
                      "Niara!",
                      style: TextStyle(fontSize: 18),
                    ),
                  ],
                ),
                // FloatingActionButton(
                //   onPressed: () {},
                //   child: const Icon(Icons.notifications_active_outlined),
                //   backgroundColor: Colors.white,
                //   highlightElevation: Color.fromARGB(255, 240, 89, 34),
                // ),
                SizedBox(
                  height: 50,
                  width: 50,
                  child: Container(
                    decoration: const BoxDecoration(
                      color: Colors.white,
                      shape: BoxShape.circle,
                      boxShadow: [
                        BoxShadow(
                            blurRadius: 5, color: Color.fromARGB(255, 240, 89, 34), spreadRadius: 1)
                      ],
                    ),
                    child: CircleAvatar(
                      radius: 30,
                      backgroundColor: Colors.white,
                      child: IconButton(
                        icon: const Icon(Icons.notifications_active_outlined),
                        onPressed: () {},
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
      bottomNavigationBar: const NavBar(),
    );
  }
}
