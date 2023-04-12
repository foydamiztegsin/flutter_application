import 'package:daryo_uz/model/news.dart';
import 'package:flutter/material.dart';

class ToMuchPage extends StatelessWidget {
  const ToMuchPage({Key? key}) : super(key: key);

  static List<News> news = [
    News(
        title:
            "Yevropa iqtisodiyoti urushga qaramay, kutilganidan ham ko‘proq o‘sdi",
        content: 'content',
        imgUrl:
            "https://s.daryo.uz/wp-content/uploads/2022/06/1200x-1-4.jpg",
        data: ' Bugun',
        time: '18:57',
        watchCount: '3254'),
    News(
        title:
            "Yevropa Ittifoqi barcha gadjetlar uchun yagona zaryadlash qurilmasini joriy etish haqidagi qonunni qabul qildi",
        content: 'content',
        imgUrl:
            "https://s.daryo.uz/wp-content/uploads/2022/06/photo_398421.jpeg",
        data: 'Bugun',
        time: '16:27',
        watchCount: '4249'),
    News(
        title:
            "Berlinda avtomobil trotuardagi odamlarni bosib ketdi. Qurbon va yaradorlar bor",
        content: 'content',
        imgUrl:
            "https://s.daryo.uz/wp-content/uploads/2022/06/photo_2022-06-08_14-50-42.jpg",
        data: 'Bugun',
        time: '09:25',
        watchCount: '7899'),
    News(
        title:
            "Jahon banki mamlakatlarni stagflyatsiya xavfidan ogohlantirmoqda",
        content: 'content',
        imgUrl:
            "https://s.daryo.uz/wp-content/uploads/2020/11/odamlar-Daryo-680x453.jpg",
        data: '07 iyun 2022',
        time: '19:00',
        watchCount: '9584'),
    News(
        title:
            "Belarus Rossiyaga mahsulotlar yetkazib berish bo‘yicha birinchi marta Germaniyadan o‘zib ketdi",
        content: 'content',
        imgUrl:
            "https://s.daryo.uz/wp-content/uploads/2022/06/800x400-1-680x340.jpg",
        data: '06 iyun 2022',
        time: '10:27',
        watchCount: '8569'),
    News(
        title:
            "Ukraina Isroildan “Temir gumbaz” mudofaa tizimini sotib olmoqchi",
        content: 'content',
        imgUrl:
            "https://s.daryo.uz/wp-content/uploads/2022/06/851030663621.9805.jpeg",
        data: '05 iyun 2022',
        time: '21:40',
        watchCount: '9865'),
  ];

  @override
  Widget build(BuildContext context) {
    return Container(
      child: ListView.builder(
          itemCount: news.length,
          itemBuilder: (BuildContext context, int index) {
            return newsItem(news[index]);
          }),
    );
  }

  Widget newsItem(News news) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 12.0, vertical: 4.0),
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            // ignore: prefer_const_literals_to_create_immutables
            children: [
              const Text(
                'Dunyo yangiliklar',
                style:
                    TextStyle(color: Colors.blue, fontWeight: FontWeight.bold),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                // ignore: prefer_const_literals_to_create_immutables
                children: [
                  Text("${news.time} | ${news.data} |",
                      style: TextStyle(color: Colors.grey)),
                  Icon(
                    Icons.visibility_outlined,
                    color: Colors.blue[300],
                  ),
                  const SizedBox(width: 5),
                   Text('${news.watchCount}')
                ],
              )
            ],
          ),
          const SizedBox(height: 8),
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Image.network('${news.imgUrl}', width: 120),
              const SizedBox(width: 12.0),
               Expanded(
                  child: Text(
                '${news.title}',
                style: TextStyle(fontWeight: FontWeight.w500, height: 1.2),
              ))
            ],
          ),
          const Divider(
            thickness: 2.0,
          )
        ],
      ),
    );
  }
}
