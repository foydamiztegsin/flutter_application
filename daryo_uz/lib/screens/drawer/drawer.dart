import 'package:daryo_uz/screens/drawer/drawer_body.dart';
import 'package:daryo_uz/screens/drawer/drawer_header.dart';
import 'package:flutter/material.dart';

class MyDrawer extends StatefulWidget {
  const MyDrawer({Key? key}) : super(key: key);

  @override
  State<MyDrawer> createState() => _MyDrawerState();
}

class _MyDrawerState extends State<MyDrawer> {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Column(
        children: [
          MyDrawerHeader(),
          MyDrawerBody(),
        ],
      ),
      
    );
  }
}
