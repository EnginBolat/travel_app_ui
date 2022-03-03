import 'package:flutter/material.dart';
import 'package:travel_app_ui/widget/info_page/info_page_button.dart';
import 'package:travel_app_ui/widget/info_page/info_page_desc.dart';
import 'package:travel_app_ui/widget/info_page/info_page_price_button.dart';

import '../widget/info_page/info_page_image.dart';
import '../widget/info_page/info_page_mini_photos.dart';
import '../widget/info_page/info_page_topbar.dart';

class InformationPage extends StatefulWidget {
  const InformationPage({Key? key, required this.indexId}) : super(key: key);

  final int indexId;

  @override
  State<InformationPage> createState() => _InformationPageState();
}

class _InformationPageState extends State<InformationPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: const Color.fromARGB(255, 245, 245, 245),
        body: SingleChildScrollView(
          child: Column(
            children: [
              const InfoPageTopBar(),
              const SizedBox(
                height: 5,
              ),
              InfoPageImage(
                indexId: widget.indexId,
              ),
              const MiniPhotos(),
              const SizedBox(
                height: 10,
              ),
              const InfoButtons(),
              const SizedBox(
                height: 20,
              ),
              InfoDesc(
                indexId: widget.indexId,
              ),const SizedBox(
                height: 20,
              ),
              InfoPayment(indexId: widget.indexId,),
              const SizedBox(
                height: 30,
              ),
            ],
          ),
        ));
  }
}
