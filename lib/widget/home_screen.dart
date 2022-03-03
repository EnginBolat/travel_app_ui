import 'package:flutter/material.dart';
import 'package:travel_app_ui/models/swip_text.dart';

import 'get_started_button.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return PageView.builder(
      scrollDirection: Axis.horizontal,
      itemCount: swipText.length,
      itemBuilder: ((context, index) {
        return Padding(
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
                swipText[index],
                style: const TextStyle(
                    fontSize: 14, fontFamily: "Gordita", height: 1.5),
                textAlign: TextAlign.center,
              ),
              const SizedBox(
                height: 60,
              ),
              index == 2
                  ? const GetStartedButton()
                  : const Text(
                      "Swipe!",
                      style: TextStyle(
                          fontSize: 24,
                          fontFamily: "Gordita",
                          fontWeight: FontWeight.w600),
                    )
            ],
          ),
        );
      }),
    );
  }
}
