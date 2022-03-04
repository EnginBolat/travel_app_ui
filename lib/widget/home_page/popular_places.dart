import 'package:flutter/material.dart';
import 'package:travel_app_ui/models/hotel.dart';

class PopularPlaces extends StatefulWidget {
  const PopularPlaces({Key? key}) : super(key: key);

  @override
  State<PopularPlaces> createState() => _PopularPlacesState();
}

class _PopularPlacesState extends State<PopularPlaces> {
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
                "Popoular",
                style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 20,
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
        Padding(
          padding: EdgeInsets.only(left: deviceWidth / 16),
          child: SizedBox(
            height: 120,
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemCount: hotels.length,
              itemBuilder: ((context, index) {
                return SizedBox(
                  height: 130.0,
                  width: 350.0,
                  child: Card(
                    child: Row(
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(12.0),
                          child: SizedBox(
                            width: 140,
                            height: 90,
                            child: ClipRRect(
                              borderRadius: BorderRadius.circular(20.0),
                              child: Image.asset(hotels[index].iUrl),
                            ),
                          ),
                        ),
                        Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              hotels[index].name,
                              style: Theme.of(context).textTheme.headline6,
                            ),
                            const SizedBox(
                              height: 5,
                            ),
                            Text(
                              "📌 " + hotels[index].location,
                              style: Theme.of(context).textTheme.subtitle2,
                            ),
                            const SizedBox(
                              height: 10,
                            ),
                            SizedBox(
                              width: 100,
                              child: Stack(
                                children: const [
                                  Positioned(
                                    child: SizedBox(
                                      width: 20,
                                      height: 20,
                                      child: CircleAvatar(
                                        backgroundImage: AssetImage(
                                            "assets/images/greg.jpg"),
                                      ),
                                    ),
                                  ),
                                  Positioned(
                                    left: 12,
                                    child: SizedBox(
                                      width: 20,
                                      height: 20,
                                      child: CircleAvatar(
                                        backgroundImage: AssetImage(
                                            "assets/images/olivia.jpg"),
                                      ),
                                    ),
                                  ),
                                  Positioned(
                                    left: 24,
                                    child: SizedBox(
                                      width: 20,
                                      height: 20,
                                      child: CircleAvatar(
                                        backgroundImage:
                                            AssetImage("assets/images/sam.jpg"),
                                      ),
                                    ),
                                  ),
                                  Positioned(
                                    left: 36,
                                    child: SizedBox(
                                      width: 20,
                                      height: 20,
                                      child: CircleAvatar(
                                        backgroundImage:
                                            AssetImage("assets/images/49.png"),
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            )
                          ],
                        )
                      ],
                    ),
                  ),
                );
              }),
            ),
          ),
        )
      ],
    );
  }
}
