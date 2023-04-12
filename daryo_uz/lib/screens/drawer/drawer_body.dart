import 'package:flutter/material.dart';

class MyDrawerBody extends StatelessWidget {
  const MyDrawerBody({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: ListView(
        children: [
          const Divider(thickness:1.0),
          Padding(
            padding: const EdgeInsets.only(top: 16),
            child: category("So'ngi yangiliklar", Colors.green),
          ),
          const Divider(thickness:1.0),
          
          category("Mahalliy"),
          category("Dunyo"),
          category("Texnologiya"),
          category("Iqtisodiyot"),
          category("Madaniyat"),
          category("Avto"),
          category("Sport"),
          category("Foto"),
          category("Lifestyle"),
          category("Kolumnistlar"),
          category("Afisha"),

        ],
      ),
    );
  }

  Widget category(String title, [Color givenColor = Colors.black]) {
    return Container(
      height: 40,
        margin: const EdgeInsets.only(left: 18),
        child: Text(
          title,
          style: TextStyle(
            color: givenColor,
            fontSize: 16,fontWeight: FontWeight.w500
          ),
        ));
  }
}
