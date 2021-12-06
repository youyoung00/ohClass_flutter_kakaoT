import 'package:flutter/material.dart';
import 'package:kakao_t_ui_exam/model/ad.dart';
import 'package:kakao_t_ui_exam/model/menu.dart';

final List<Menu> fakeMenus =
    List.generate(9, (index) => Menu(
      title: '택시',
      imageUrl: "https://w7.pngwing.com/pngs/390/806/png-transparent-rilakkuma-kakaotalk-kakao-friends-south-korea-kakaofriends-sticker-desktop-wallpaper-snout-thumbnail.png",
    ));

final List<Ad> fakeAds = [
  Ad(
    title: '일어나 회사 가야지',
    text: '기왕 늦은거 편하게 택시타고 가자',
    color: Colors.green,
    imageUrl:
        "https://w7.pngwing.com/pngs/390/806/png-transparent-rilakkuma-kakaotalk-kakao-friends-south-korea-kakaofriends-sticker-desktop-wallpaper-snout-thumbnail.png",
  ),
  Ad(
    title: '일어나 회사 가야지2',
    text: '기왕 늦은거 편하게 택시타고 가자2',
    color: Colors.red,
    imageUrl:
        "https://w7.pngwing.com/pngs/390/806/png-transparent-rilakkuma-kakaotalk-kakao-friends-south-korea-kakaofriends-sticker-desktop-wallpaper-snout-thumbnail.png",
  ),
  Ad(
    title: '일어나 회사 가야지3',
    text: '기왕 늦은거 편하게 택시타고 가자3',
    color: Colors.blue,
    imageUrl:
        "https://w7.pngwing.com/pngs/390/806/png-transparent-rilakkuma-kakaotalk-kakao-friends-south-korea-kakaofriends-sticker-desktop-wallpaper-snout-thumbnail.png",
  ),
  Ad(
    title: '일어나 회사 가야지4',
    text: '기왕 늦은거 편하게 택시타고 가자4',
    color: Colors.yellow,
    imageUrl:
        "https://w7.pngwing.com/pngs/390/806/png-transparent-rilakkuma-kakaotalk-kakao-friends-south-korea-kakaofriends-sticker-desktop-wallpaper-snout-thumbnail.png",
  ),
];
