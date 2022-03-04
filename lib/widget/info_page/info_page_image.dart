import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:travel_app_ui/models/hotel.dart';

class InfoPageImage extends StatefulWidget {
  InfoPageImage({Key? key, required this.indexId}) : super(key: key);

  int indexId;

  @override
  State<InfoPageImage> createState() => _InfoPageImageState();
}

late bool isLiked = false;

class _InfoPageImageState extends State<InfoPageImage> {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 385,
      width: 360,
      decoration: BoxDecoration(
        image: DecorationImage(
            image: AssetImage(hotels[widget.indexId].iUrl), fit: BoxFit.fill),
        borderRadius: BorderRadius.circular(30),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          Padding(
            padding: const EdgeInsets.only(
              left: 20,
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Text(
                  hotels[widget.indexId].name,
                  style: Theme.of(context).textTheme.headline4,
                ),
                Text(
                  "📌 " + hotels[widget.indexId].location,
                  style: Theme.of(context).textTheme.headline3,
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(bottom: 20, right: 20),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.end,
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                SizedBox(
                  height: 30,
                  width: 30,
                  child: IconButton(
                    onPressed: () {},
                    icon: const Icon(
                      FontAwesomeIcons.share,
                      color: Colors.white,
                    ),
                  ),
                ),
                const SizedBox(
                  width: 10,
                ),
                SizedBox(
                  height: 30,
                  width: 30,
                  child: IconButton(
                      onPressed: () {
                        setState(() {
                          if (isLiked == false) {
                            isLiked = true;
                          } else if (isLiked == true) {
                            (isLiked = false);
                          }
                        });
                      },
                      icon: isLiked == false
                          ? const Icon(
                              FontAwesomeIcons.solidHeart,
                              color: Colors.white,
                            )
                          : const Icon(
                              FontAwesomeIcons.solidHeart,
                              color: Colors.red,
                            )),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
