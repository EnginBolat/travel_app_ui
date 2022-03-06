import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import '../../models/hotel.dart';

class InfoPayment extends StatefulWidget {
  InfoPayment({Key? key, required this.indexId}) : super(key: key);

  int indexId;

  @override
  State<InfoPayment> createState() => _InfoPaymentState();
}

class _InfoPaymentState extends State<InfoPayment> {
  @override
  Widget build(BuildContext context) {
    var deviceWidth = MediaQuery.of(context).size.width;
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: deviceWidth / 16),
      child: Row(
        children: [
          Text(
            "\$ ${hotels[widget.indexId].price}/Person",
            style: Theme.of(context).textTheme.headline5,
          ),
          const SizedBox(
            width: 20,
          ),
          SizedBox(
            height: 50,
            width: deviceWidth / 2.5,
            child: Directionality(
              textDirection: TextDirection.rtl,
              child: ElevatedButton.icon(
                onPressed: () {},
                label: Text(
                  "Continue",
                  style: Theme.of(context).textTheme.button,
                ),
                icon: const Icon(
                  FontAwesomeIcons.arrowRight,
                  color: Colors.white,
                  size: 22,
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
          ),
        ],
      ),
    );
  }
}
