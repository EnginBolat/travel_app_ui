import 'package:flutter/material.dart';

import '../../models/country.dart';
import '../../models/hotel.dart';

class MiniPhotos extends StatefulWidget {
  const MiniPhotos({Key? key}) : super(key: key);

  @override
  State<MiniPhotos> createState() => _MiniPhotosState();
}

class _MiniPhotosState extends State<MiniPhotos> {
  @override
  Widget build(BuildContext context) {
    var deviceWidth = MediaQuery.of(context).size.width;
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: deviceWidth / 16),
      child: SizedBox(
        height: 120,
        width: deviceWidth,
        child: ListView.builder(
          itemCount: 4,
          scrollDirection: Axis.horizontal,
          itemBuilder: (context, index) => Container(
            width: deviceWidth / 4.6,
            margin: const EdgeInsets.symmetric(vertical: 10),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    SizedBox(
                      height: 65,
                      width: 65,
                      child: CircleAvatar(
                        backgroundImage:
                            AssetImage("assets/images/miniPhoto$index.png"),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
