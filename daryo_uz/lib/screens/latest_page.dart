import 'package:daryo_uz/model/news.dart';
import 'package:flutter/material.dart';

class LatestPage extends StatelessWidget {
  const LatestPage({Key? key}) : super(key: key);

  static List<News> news = [
    News(
        title:
            "O‘zbekistondagi maktablarda 1-sinfga qabul qachondan boshlanishi ma’lum qilindi",
        content: 'content',
        imgUrl:
            "https://s.daryo.uz/wp-content/uploads/2022/06/photo_2021-11-27_11-07-16.jpg",
        data: '08 iyun 2022',
        time: '09:57',
        watchCount: '7339'),
    News(
        title:
            "O‘zbekistonda tele va radio dasturlarni qayta uzatish xizmatlari bozoridagi monopol tashkilotga ish qo‘zg‘atildi",
        content: 'content',
        imgUrl:
            "https://s.daryo.uz/wp-content/uploads/2022/06/paddingtonqueen-3.jpg",
        data: '06 iyun 2022',
        time: '11:27',
        watchCount: '2494'),
    News(
        title:
            "Olmazor Business City turar joy majmuasidagi yerosti avtoturargohining afzalliklari",
        content: 'content',
        imgUrl:
            "https://s.daryo.uz/wp-content/uploads/2022/06/daryo_08.06.2022.jpg",
        data: '07 iyun 2022',
        time: '09:25',
        watchCount: '11260'),
    News(
        title:
            "Paddington ayig‘i Yelizaveta II ning “platina yubileyi”da ishtirok etdi (video)",
        content: 'content',
        imgUrl:
            "https://s.daryo.uz/wp-content/uploads/2022/06/paddingtonqueen.jpg",
        data: '07 iyun 2022',
        time: '11:00',
        watchCount: '4721'),
    News(
        title:
            "Mahalla va nuroniylarni qo‘llab-quvvatlash vazirligi huzurida budjetdan tashqari jamg‘arma tashkil etildi",
        content: 'content',
        imgUrl:
            "https://s.daryo.uz/wp-content/uploads/2022/06/photo_2021-11-12_16-44-45.jpg",
        data: '05 iyun 2022',
        time: '10:27',
        watchCount: '3597'),
    News(
        title:
            "Toshkentda tirbandliklarni kamaytirish va metro trafigini oshirish maqsadida 17 ta OTMning ish grafigi o‘zgartirilishi mumkin",
        content: 'content',
        imgUrl:
            "https://s.daryo.uz/wp-content/uploads/2022/06/photo_2021-10-29_13-43-57.jpg",
        data: '07 iyun 2022',
        time: '10:40',
        watchCount: '5245'),
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
                "So'ngi yangiliklar",
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
