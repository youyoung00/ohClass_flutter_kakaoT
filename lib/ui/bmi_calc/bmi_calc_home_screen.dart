import 'package:flutter/material.dart';

import 'bmi_calc_result_screen.dart';

class BmiCalcHomeScreen extends StatefulWidget {
  BmiCalcHomeScreen({Key? key}) : super(key: key);

  @override
  State<BmiCalcHomeScreen> createState() => _BmiCalcHomeScreenState();
}

class _BmiCalcHomeScreenState extends State<BmiCalcHomeScreen> {
  final TextEditingController _heightController = TextEditingController();
  final TextEditingController _weightController = TextEditingController();
  final _formKey = GlobalKey<FormState>();

  @override
  void initState() {
    // TODO: implement initState
    _heightController.addListener(() {});
    _weightController.addListener(() {});
    super.initState();
  }

  @override
  void dispose() {
    // TODO: implement dispose
    _heightController.dispose();
    _weightController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("BMI 계산기"),
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Form(
          key: _formKey,
          child: Column(
            children: [
              TextFormField(
                decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  hintText: '키',
                ),
                keyboardType: TextInputType.number,
                controller: _heightController,
                validator: (value){
                  if(value?.isEmpty ?? false){
                    return '키를 입력하세요';
                  }
                  return null;
                },

              ),
              SizedBox(
                height: 16.0,
              ),
              TextFormField(
                decoration: InputDecoration(
                    border: OutlineInputBorder(), hintText: '몸무게'),
                keyboardType: TextInputType.number,
                controller: _weightController,
                validator: (value){
                  if(value!.isEmpty){
                    return '몸무게를 입력하세요';
                  }
                  return null;
                },
                // controller: textEditingController,
              ),
              Container(
                alignment: Alignment.centerRight,
                child: ElevatedButton(
                    onPressed: () {

                      if(_formKey.currentState?.validate() ?? false){
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => BmiCalResultScreen(
                                height: double.parse(_heightController.text.trim()),
                                weight: double.parse(_weightController.text.trim()),
                              )
                          ),
                        );
                      }

                    },
                    child: Text('결과')),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
