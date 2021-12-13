import 'package:flutter/material.dart';
import 'package:kakao_t_ui_exam/model/menu.dart';

class DetailScreen extends StatelessWidget {
  // final String title;
  final Menu menu;
  const DetailScreen({Key? key, required this.menu}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(menu.title),
      ),
      body: Center(
        child: Hero(
          tag: menu.title,
            child: Image.network(menu.imageUrl),
        ),
      ),
    );
  }
}
