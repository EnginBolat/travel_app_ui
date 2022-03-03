import 'package:flutter/material.dart';
import 'package:travel_app_ui/models/hotel.dart';

class OurProperties extends StatefulWidget {
  const OurProperties({Key? key}) : super(key: key);

  @override
  State<OurProperties> createState() => _OurPropertiesState();
}

class _OurPropertiesState extends State<OurProperties> {
  @override
  Widget build(BuildContext context) {
    var deviceWidth = MediaQuery.of(context).size.width;
    return Column(
      children: [
        Padding(
          padding: EdgeInsets.symmetric(horizontal: deviceWidth / 16),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: const [
              Text(
                "Our Properties",
                style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 18,
                    fontFamily: "Gordita"),
              ),
              Text(
                "View All",
                style: TextStyle(
                    fontSize: 16, fontFamily: "Gordita", color: Colors.orange),
              ),
            ],
          ),
        ),
        const SizedBox(
          height: 10,
        ),
        SizedBox(
          height: 300,
          child: ListView.builder(
            scrollDirection: Axis.horizontal,
            itemCount: hotels.length,
            itemBuilder: ((context, index) {
              return Padding(
                padding: EdgeInsets.only(left: deviceWidth / 20),
                child: Column(
                  children: [
                    SizedBox(
                      width: 300,
                      height: 250,
                      child: Card(
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(30)),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Padding(
                              padding:
                                  const EdgeInsets.symmetric(vertical: 10.0),
                              child: ClipRRect(
                                borderRadius: BorderRadius.circular(20.0),
                                child: Image.asset(hotels[index].iUrl),
                              ),
                            ),
                            Padding(
                              padding:
                                  const EdgeInsets.symmetric(horizontal: 20.0),
                              child: Row(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                mainAxisAlignment: MainAxisAlignment.start,
                                children: [
                                  Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      Text(
                                        hotels[index].name,
                                        style: const TextStyle(
                                            fontWeight: FontWeight.bold,
                                            fontSize: 18,
                                            fontFamily: "Gordita"),
                                      ),
                                      const SizedBox(
                                        height: 5,
                                      ),
                                      Text("📌 " + hotels[index].location,
                                          style: const TextStyle(
                                              color: Colors.grey,
                                              fontSize: 16,
                                              fontFamily: "Gordita")),
                                    ],
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              );
            }),
          ),
        ),
      ],
    );
  }
}
