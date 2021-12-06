import 'package:flutter/material.dart';
import 'package:kakao_t_ui_exam/model/menu.dart';

class MenuWidget extends StatelessWidget {
  final Menu menu;

  const MenuWidget({
    Key key,
    this.menu,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Image.network(
          menu.imageUrl,
          // "https://pds.joongang.co.kr/news/component/htmlphoto_mmdata/201702/18/htm_20170218114544126552.jpg",
          width: 80,
          height: 80,
          fit: BoxFit.cover,
        ),
        SizedBox(
          height: 10,
        ),
        Text(
          menu.title,
          style: TextStyle(fontSize: 14),
        ),
      ],
    );
  }
}