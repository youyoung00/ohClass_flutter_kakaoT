import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class BmiCalResultScreen extends StatelessWidget {
  final double weight;
  final double height;

  BmiCalResultScreen({Key key, @required this.weight, @required this.height}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final double bmi = weight / ((height / 100) * (height / 100));
    return Scaffold(
      appBar: AppBar(
        title: const Text("비만도 계산기"),
      ),
      body: Center(
        child:Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            GestureDetector(
              onTap: (){
                 Navigator.of(context).pop;
              },
              child: Text(
                _calcBmi(bmi),
                style: TextStyle(
                  fontSize: 36,
                ),
              ),
            ),
            SizedBox(
              height: 16,
            ),
            _buildIcon(bmi),
          ],
        ),
      ),
    );
  }

  String _calcBmi(double bmi){
    var result = '저체중';
    if(bmi >= 35){
      result = '고도 미만';
    } else if(bmi >= 30){
      result = '2단계 비만';
    } else if(bmi >= 25){
      result = '1단계 비만';
    } else if(bmi >= 23){
      result = '과체중';
    } else if(bmi >= 18.5){
      result = '정상';
    }
    return result;
  }

  Widget _buildIcon(double bmi){
    if(bmi >= 23){
      return Icon(
        Icons.sentiment_very_dissatisfied,
        color: Colors.red,
        size: 100,
      );
    } else if(bmi >= 18.5){
      return Icon(
        Icons.sentiment_satisfied,
        color: Colors.green,
        size: 100,
      );
    } else {
      return Icon(
        Icons.sentiment_dissatisfied,
        color: Colors.orange,
        size: 100,
      );
    }
  }
}
