import 'package:flutter/material.dart';
import 'package:travel_app_ui/models/hotel.dart';
import 'package:travel_app_ui/pages/information_page.dart';

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
            children: [
              Text(
                "Our Properties",
                style: Theme.of(context).textTheme.headline6,
              ),
              Text(
                "View All",
                style: Theme.of(context).textTheme.bodyText1,
              ),
            ],
          ),
        ),
        const SizedBox(
          height: 10,
        ),
        SizedBox(
          height: 250,
          child: ListView.builder(
            scrollDirection: Axis.horizontal,
            itemCount: hotels.length,
            itemBuilder: ((context, index) {
              return Padding(
                padding: EdgeInsets.only(left: deviceWidth / 20),
                child: Column(
                  children: [
                    GestureDetector(
                      onTap: () => Navigator.pushReplacement(
                        context,
                        MaterialPageRoute(
                            builder: (context) => InformationPage(
                                  indexId: index,
                                )),
                      ),
                      child: SizedBox(
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
                                padding: const EdgeInsets.symmetric(
                                    horizontal: 20.0),
                                child: Row(
                                  crossAxisAlignment: CrossAxisAlignment.end,
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  children: [
                                    Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      children: [
                                        Text(
                                          hotels[index].name,
                                          style: Theme.of(context)
                                              .textTheme
                                              .headline6,
                                        ),
                                        const SizedBox(
                                          height: 5,
                                        ),
                                        Text("📌 " + hotels[index].location,
                                            style: Theme.of(context)
                                                .textTheme
                                                .subtitle2),
                                      ],
                                    ),
                                    const SizedBox(
                                      width: 65,
                                    ),
                                    Container(
                                      width: 25.0,
                                      height: 25.0,
                                      child: IconButton(
                                        iconSize: 12.0,
                                        icon: const Icon(Icons.arrow_right,
                                            color: Colors.white),
                                        onPressed: () =>
                                            Navigator.pushReplacement(
                                          context,
                                          MaterialPageRoute(
                                              builder: (context) =>
                                                  InformationPage(
                                                    indexId: index,
                                                  )),
                                        ),
                                      ),
                                      decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(8),
                                        gradient: const LinearGradient(
                                          begin: Alignment.centerLeft,
                                          end: Alignment.centerRight,
                                          colors: [
                                            Color.fromARGB(255, 247, 142, 72),
                                            Color.fromARGB(255, 240, 89, 34)
                                          ],
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
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
