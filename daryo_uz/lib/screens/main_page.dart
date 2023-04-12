import 'package:daryo_uz/model/news.dart';
import 'package:flutter/material.dart';

class MainPage extends StatelessWidget {
  const MainPage({Key? key}) : super(key: key);

  static List<News> news = [
    News(
        title:
            "O‘zbekistonda reklamada milliy va oilaviy an’analarga zid bo‘lgan obrazlardan foydalanish taqiqlanadi",
        content: 'content',
        imgUrl:
            "https://s.daryo.uz/wp-content/uploads/2022/06/photo_2022-06-08_18-41-55.jpg",
        data: '08 iyun 2022',
        time: '18:57',
        watchCount: '3049'),
    News(
        title:
            "O‘zbekistonda dollarning rasmiy kursi uch kunlik ko‘tarilishdan so‘ng pastladi",
        content: 'content',
        imgUrl:
            "https://s.daryo.uz/wp-content/uploads/2022/06/photo_2022-06-08_15-52-36.jpg",
        data: '07 iyun 2022',
        time: '09:11',
        watchCount: '5867'),
    News(
        title:
            "O‘zbekiston g‘alla islohoti: tadbirkorlarda endi yangi imkoniyatlar paydo bo‘ldi",
        content: 'content',
        imgUrl:
            "https://s.daryo.uz/wp-content/uploads/2022/06/1x-1.jpg",
        data: '06 iyun 2022',
        time: '16:55',
        watchCount: '5498'),
    News(
        title:
            "Samarqanddagi qabristonda yong‘in yuz berdi",
        content: 'content',
        imgUrl:
            "https://s.daryo.uz/wp-content/uploads/2022/06/photo_2021-11-25_14-29-19.jpg",
        data: '05 iyun 2022',
        time: '16:33',
        watchCount: '5200'),
    News(
        title:
            "O‘zbekistondan Kanadaga mavsumiy ishchilarni yuborish yo‘lga qo‘yilishi mumkin",
        content: 'content',
        imgUrl:
            "https://s.daryo.uz/wp-content/uploads/2022/06/photo_2022-06-07_15-15-50-1.jpg",
        data: '03 iyun 2022',
        time: '09:38',
        watchCount: '12005'),
    News(
        title:
            "O‘zbekistonda “Usmon Mus’hafi”ning aynan nusxasi yaratildi",
        content: 'content',
        imgUrl:
            "https://s.daryo.uz/wp-content/uploads/2022/06/photo_2022-06-07_15-15-50.jpg",
        data: '02 iyun 2022',
        time: '11:27',
        watchCount: '13253'),
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
                'Asosiy yangiliklar',
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
