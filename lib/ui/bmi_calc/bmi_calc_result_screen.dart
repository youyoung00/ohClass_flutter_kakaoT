import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class BmiCalResultScreen extends StatelessWidget {
  const BmiCalResultScreen({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("결과"),
      ),
      body: Center(
        child: GestureDetector(
          onTap: (){
             Navigator.of(context).pop;
          },
          child: Text(
            "결과화면",
            style: TextStyle(
              fontSize: 30,
            ),
          ),
        ),
      ),
    );
  }
}
