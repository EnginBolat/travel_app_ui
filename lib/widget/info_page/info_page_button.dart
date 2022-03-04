import 'package:flutter/material.dart';

class InfoButtons extends StatefulWidget {
  const InfoButtons({Key? key}) : super(key: key);

  @override
  State<InfoButtons> createState() => _InfoButtonsState();
}

class _InfoButtonsState extends State<InfoButtons> {
  @override
  Widget build(BuildContext context) {
    var deviceWidth = MediaQuery.of(context).size.width;
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: deviceWidth / 14),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          SizedBox(
            height: 40,
            width: 85,
            child: ElevatedButton(
              onPressed: () {},
              child: Text(
                "Detail",
                style: Theme.of(context).textTheme.headline2,
              ),
              style: ElevatedButton.styleFrom(
                elevation: 10,
                shadowColor: const Color.fromARGB(255, 240, 89, 34),
                primary: const Color.fromARGB(255, 240, 89, 34),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10.0),
                ),
              ),
            ),
          ),
          const SizedBox(
            width: 15,
          ),
          SizedBox(
            height: 40,
            width: 85,
            child: ElevatedButton(
              onPressed: () {},
              child: Text(
                "Review",
                style: Theme.of(context).textTheme.headline1,
              ),
              style: ElevatedButton.styleFrom(
                elevation: 10,
                primary: const Color.fromARGB(255, 255, 255, 255),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10.0),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
