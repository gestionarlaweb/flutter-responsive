import 'package:flutter/material.dart';

class MobileAppBar extends StatelessWidget {
  final GlobalKey<ScaffoldState> scaffoldKey;

  const MobileAppBar({Key? key, required this.scaffoldKey}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: Colors.black87,
      elevation: 0,
      title: Image.asset('assets/images/descarga.jpeg', width: 80),
      actions: [
        IconButton(
            onPressed: () {
              scaffoldKey.currentState!.openEndDrawer();
            },
            icon: Icon(Icons.menu, size: 30, color: Colors.white))
      ],
    );
  }
}
