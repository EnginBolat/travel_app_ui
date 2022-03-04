import 'package:flutter/material.dart';

import '../../models/hotel.dart';

// ignore: must_be_immutable
class InfoDesc extends StatefulWidget {
  InfoDesc({Key? key, required this.indexId}) : super(key: key);

  int indexId;
  @override
  State<InfoDesc> createState() => _InfoDescState();
}

class _InfoDescState extends State<InfoDesc> {
  @override
  Widget build(BuildContext context) {
    var deviceWidth = MediaQuery.of(context).size.height;
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: deviceWidth / 20),
      child: SizedBox(
        width: 400,
        height: 120,
        child: hotels[widget.indexId].desc.length > 200
            ? Text(
                hotels[widget.indexId].desc.substring(0,240)+" Read More...",
                style: Theme.of(context).textTheme.subtitle2,
              )
            : Text(
                hotels[widget.indexId].desc,
                style: const TextStyle(
                  fontSize: 16,
                  color: Colors.grey,
                  fontFamily: "Gordita",
                  height: 1.2,
                ),
              ),
      ),
    );
  }
}
