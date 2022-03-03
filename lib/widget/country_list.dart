import 'package:flutter/material.dart';
import '../models/country.dart';

class CountryList extends StatefulWidget {
  const CountryList({Key? key}) : super(key: key);

  @override
  State<CountryList> createState() => _CountryListState();
}

class _CountryListState extends State<CountryList> {
  @override
  Widget build(BuildContext context) {
    var deviceWidth = MediaQuery.of(context).size.width;

    return Padding(
      padding: EdgeInsets.symmetric(horizontal: deviceWidth / 16),
      child: SizedBox(
        height: 120,
        width: deviceWidth,
        child: ListView.builder(
          itemCount: countrys.length,
          scrollDirection: Axis.horizontal,
          itemBuilder: (context, index) => Container(
            width:  deviceWidth / 4.6 ,
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
                        backgroundImage: AssetImage(countrys[index].iUrl),
                      ),
                    ),
                  ],
                ),
                const SizedBox(
                  height: 10,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      countrys[index].name,
                      style: const TextStyle(
                          fontSize: 18,
                          fontFamily: "Gordita",
                          fontWeight: FontWeight.bold,
                          color: Color.fromRGBO(99, 99, 99, 11)),
                      textAlign: TextAlign.center,
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
