import 'package:flutter/material.dart';

class TopBar extends StatefulWidget {
  const TopBar({Key? key}) : super(key: key);

  @override
  State<TopBar> createState() => _TopBarState();
}

class _TopBarState extends State<TopBar> {
  @override
  Widget build(BuildContext context) {
    var deviceWidth = MediaQuery.of(context).size.width;
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: deviceWidth / 16),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            children: const [
              SizedBox(
                height: 50,
                width: 50,
                child: CircleAvatar(
                  backgroundImage: AssetImage("assets/images/humans.png"),
                ),
              ),
              SizedBox(
                width: 10,
              ),
              Text("Hello,"),
              SizedBox(
                width: 2.0,
              ),
              Text(
                "Niara!",
                style: TextStyle(fontSize: 18),
              ),
            ],
          ),
          SizedBox(
            height: 50,
            width: 50,
            child: Container(
              decoration: const BoxDecoration(
                color: Colors.white,
                shape: BoxShape.circle,
                boxShadow: [
                  BoxShadow(
                      blurRadius: 5,
                      color: Color.fromARGB(255, 240, 89, 34),
                      spreadRadius: 1)
                ],
              ),
              child: CircleAvatar(
                radius: 30,
                backgroundColor: Colors.white,
                child: IconButton(
                  icon: const Icon(Icons.notifications_active_outlined),
                  onPressed: () {},
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
