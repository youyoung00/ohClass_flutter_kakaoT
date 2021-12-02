import 'package:flutter/material.dart';

class Ad extends StatelessWidget {
  final String title;
  final Color color;

  const Ad({
    Key key,
    this.title,
    this.color,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 8,
      color: color,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(16.0),
      ),
      child: Container(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Row(
            children: [
              Expanded(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Text(
                      title,
                      style: TextStyle(
                        fontSize: 20,
                        color: Colors.white,
                      ),
                    ),
                    Text("기왕 늦은 거 편하게 택시타고 가자"),
                  ],
                ),
              ),
              Image.network(
                "https://w7.pngwing.com/pngs/390/806/png-transparent-rilakkuma-kakaotalk-kakao-friends-south-korea-kakaofriends-sticker-desktop-wallpaper-snout-thumbnail.png",
                height: 100,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
