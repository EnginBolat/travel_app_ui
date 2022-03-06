import 'package:flutter/material.dart';
import 'package:travel_app_ui/widget/home_page/bottom_navigation_bar.dart';
import 'package:travel_app_ui/widget/home_page/country_list.dart';
import 'package:travel_app_ui/widget/home_page/our_properties.dart';
import 'package:travel_app_ui/widget/home_page/popular_places.dart';
import 'package:travel_app_ui/widget/home_page/search_area.dart';
import 'package:travel_app_ui/widget/home_page/top_bar.dart';

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
      // appBar: AppBar(
      //   backgroundColor: Colors.transparent,
      //   elevation: 0.0,
      // ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 50),
          child: Column(
            children: const <Widget>[
              TopBar(),
              SizedBox(
                height: 30,
              ),
              SearchArea(),
              SizedBox(
                height: 10,
              ),
              CountryList(),
              SizedBox(
                height: 10,
              ),
              OurProperties(),
              SizedBox(
                height: 30,
              ),
              PopularPlaces(),
            ],
          ),
        ),
      ),
      bottomNavigationBar: const NavBar(),
    );
  }
}
