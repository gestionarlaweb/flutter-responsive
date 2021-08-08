import 'package:flutter/material.dart';
import 'package:responsive/screens/mobile/mobile_app_bar.dart';
import 'package:responsive/screens/mobile/mobile_drawer.dart';
import 'package:responsive/screens/web/web_app_bar.dart';
import 'package:responsive/widgets/size_info.dart';

class HomePage extends StatelessWidget {
  final GlobalKey<ScaffoldState> scaffoldkey = new GlobalKey<ScaffoldState>();

  bool isWeb() {
    return SizeInfo.screenWidth! > 950;
  }

  @override
  Widget build(BuildContext context) {
    SizeInfo.init(context);
    return Scaffold(
      key: scaffoldkey,
      backgroundColor: Colors.white,
      endDrawer: isWeb() ? null : MobileDrawer(),
      appBar: PreferredSize(
        preferredSize: const Size.fromHeight(60),
        child: isWeb()
            ? WebAppBar()
            : MobileAppBar(
                scaffoldKey: scaffoldkey,
              ),
      ),
    );
  }
}
