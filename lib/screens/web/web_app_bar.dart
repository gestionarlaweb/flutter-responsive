import 'package:flutter/material.dart';
import 'package:responsive/widgets/size_info.dart';
import 'package:tab_indicator_styler/tab_indicator_styler.dart';

class WebAppBar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: Colors.black87,
      elevation: 0,
      title: Row(
        children: [
          SizedBox(width: SizeInfo.screenHeight! * 0.05),
          Image.asset('assets/images/descarga.jpeg'),
          SizedBox(width: 20),
          Container(
            width: 350,
            margin: EdgeInsets.only(top: 10),
            child: DefaultTabController(
              length: 4,
              child: TabBar(
                indicatorColor: Colors.green,
                tabs: [
                  Tab(
                    text: "Home",
                  ),
                  Tab(
                    text: "Work",
                  ),
                  Tab(
                    text: "Play",
                  ),
                ],
                labelColor: Colors.black,
                // add it here
                indicator: DotIndicator(
                  color: Colors.black,
                  distanceFromCenter: 16,
                  radius: 3,
                  paintingStyle: PaintingStyle.fill,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
