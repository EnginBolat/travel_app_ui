import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class GetStartedButton extends StatefulWidget {
  const GetStartedButton({Key? key}) : super(key: key);

  @override
  State<GetStartedButton> createState() => _GetStartedButtonState();
}

class _GetStartedButtonState extends State<GetStartedButton> {
  @override
  Widget build(BuildContext context) {
    return SizedBox(
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
            style: TextStyle(
                color: Colors.white, fontSize: 20, fontWeight: FontWeight.bold),
          ),
          icon: const Icon(
            FontAwesomeIcons.arrowRight,
            color: Colors.white,
            size: 22,
          ),
          style: ElevatedButton.styleFrom(
            elevation: 10,
            primary: Color.fromARGB(255, 240, 89, 34),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(10.0),
            ),
          ),
        ),
      ),
    );
  }
}
