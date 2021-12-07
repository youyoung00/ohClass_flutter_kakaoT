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
        Stack(
          children: [
            Image.network(
              menu.imageUrl,
              // "https://pds.joongang.co.kr/news/component/htmlphoto_mmdata/201702/18/htm_20170218114544126552.jpg",
              width: 80,
              height: 80,
              fit: BoxFit.cover,
            ),

            Positioned(
              right: 0,
              bottom: 5,
              child: Icon(
                Icons.star_outlined,
                color: menu.isFavorite ? Colors.yellow : Colors.black,
              ),
            ),
            // if (menu.isFavorite)Positioned(
            //   right: 0,
            //   bottom: 10,
            //   child: Icon(
            //     Icons.star_outlined,
            //     color: Colors.yellow,
            //   ),
            // ),
            // if (!menu.isFavorite) Positioned(
            //   right: 0,
            //   bottom: 10,
            //   child: Icon(
            //     Icons.star_outlined,
            //     color: Colors.black,
            //   ),
            // )
          ],
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