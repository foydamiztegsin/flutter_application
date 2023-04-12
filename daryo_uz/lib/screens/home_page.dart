import 'package:daryo_uz/screens/drawer/drawer.dart';
import 'package:daryo_uz/screens/latest_page.dart';
import 'package:daryo_uz/screens/main_page.dart';
import 'package:daryo_uz/screens/to_much_page.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        appBar: AppBar(
          title: const Text('Daryo'), // tepadagi yozuv
          // ignore: prefer_const_literals_to_create_immutables
          bottom:
              const TabBar(isScrollable: true, //yozuvni bir qator qilish uchun
                  tabs: [
                Tab(child: Text("So'ngi yangiliklar")),
                Tab(child: Text("Asosiy yangiliklar")),
                Tab(child: Text("Dunyo yangiliklar")),
              ]),
        ),
        body: TabBarView(children: [
          LatestPage(), // alohida bo'lilari
          MainPage(),
          ToMuchPage()
        ]),
        drawer: MyDrawer(),
      ),
      
    );
  }
}
