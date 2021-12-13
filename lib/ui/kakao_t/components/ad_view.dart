import 'package:flutter/material.dart';
import 'package:kakao_t_ui_exam/model/ad.dart';

class ADView extends StatelessWidget {

  final Ad ad;

  const ADView({
    Key? key,
    required this.ad,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 8,
      color: ad.color,
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
                      ad.title,
                      style: TextStyle(
                        fontSize: 20,
                        color: Colors.white,
                      ),
                    ),
                    Text(ad.text),
                  ],
                ),
              ),
              Image.network(
                ad.imageUrl,
                height: 100,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
