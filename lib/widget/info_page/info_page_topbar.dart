import 'package:flutter/material.dart';

import '../../pages/home_page.dart';

class InfoPageTopBar extends StatefulWidget {
  const InfoPageTopBar({Key? key}) : super(key: key);

  @override
  State<InfoPageTopBar> createState() => _InfoPageTopBarState();
}

class _InfoPageTopBarState extends State<InfoPageTopBar> {
  @override
  Widget build(BuildContext context) {
    var deviceWidth = MediaQuery.of(context).size.width;
    var deviceHeight = MediaQuery.of(context).size.height;
    return Padding(
      padding: EdgeInsets.symmetric(
          horizontal: deviceWidth / 16, vertical: deviceHeight / 15),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          SizedBox(
            height: 30,
            width: 30,
            child: RawMaterialButton(
              onPressed: () => Navigator.pushReplacement(
                context,
                MaterialPageRoute(builder: (context) => const HomePage()),
              ),
              elevation: 2.0,
              fillColor: Colors.white,
              child: const Icon(Icons.arrow_left),
              shape: const CircleBorder(),
            ),
          ),
          Text(
            "Details",
            style: Theme.of(context).textTheme.headline6,
          ),
          SizedBox(
            height: 30,
            width: 30,
            child: RawMaterialButton(
              onPressed: () {},
              elevation: 2.0,
              fillColor: Colors.white,
              child: const Icon(Icons.more_horiz),
              shape: const CircleBorder(),
            ),
          ),
        ],
      ),
    );
  }
}
