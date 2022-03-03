import 'package:flutter/material.dart';

class SearchArea extends StatefulWidget {
  const SearchArea({Key? key}) : super(key: key);

  @override
  State<SearchArea> createState() => _SearchAreaState();
}

class _SearchAreaState extends State<SearchArea> {
  @override
  Widget build(BuildContext context) {
    var deviceWidth = MediaQuery.of(context).size.width;
    return Column(
      children: [
        Padding(
          padding: EdgeInsets.symmetric(horizontal: deviceWidth / 16),
          child: Row(
            children: const [
              Text(
                "Find Your Stay",
                style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
              )
            ],
          ),
        ),
        const SizedBox(
          height: 10.0,
        ),
        Padding(
          padding: EdgeInsets.symmetric(horizontal: deviceWidth / 16),
          child: Row(
            children: [
              SizedBox(
                width: deviceWidth / 1.4,
                child: TextField(
                  decoration: InputDecoration(
                    contentPadding: const EdgeInsets.symmetric(vertical: 10),
                    hintText: ("   Search here..."),
                    suffixIcon: const Icon(Icons.search),
                    fillColor: Colors.white,
                    filled: true,
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(8.0),
                      borderSide: const BorderSide(color: Colors.transparent),
                    ),
                  ),
                ),
              ),
              const SizedBox(
                width: 10.0,
              ),
              Container(
                width: 50,
                height: 50,
                child: IconButton(
                  icon: const Icon(Icons.settings, color: Colors.white),
                  onPressed: () {},
                ),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(15),
                  gradient: const LinearGradient(
                    begin: Alignment.centerLeft,
                    end: Alignment.centerRight,
                    colors: [
                      Color.fromARGB(255, 247, 142, 72),
                      Color.fromARGB(255, 240, 89, 34)
                    ],
                  ),
                ),
              )
            ],
          ),
        ),
      ],
    );
  }
}
