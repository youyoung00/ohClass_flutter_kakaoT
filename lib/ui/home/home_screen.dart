import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: Text(
          '카카오 T',
          style: TextStyle(color: Colors.black),
        ),
      ),
      body: _buildBody(),
    );
  }

  Widget _buildBody(){
    return Padding(
      padding: const EdgeInsets.all(20.0),
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Column(
                children: [
                  Image.network("https://pds.joongang.co.kr/news/component/htmlphoto_mmdata/201702/18/htm_20170218114544126552.jpg",
                    width: 80,
                    height: 80,
                    fit: BoxFit.cover,
                  ),
                  SizedBox(height: 10,),
                  Text(
                    '택시',
                    style: TextStyle(fontSize: 20),
                  ),
                ],
              ),
              Column(
                children: [
                  Image.network("https://pds.joongang.co.kr/news/component/htmlphoto_mmdata/201702/18/htm_20170218114544126552.jpg",
                    width: 80,
                    height: 80,
                    fit: BoxFit.cover,
                  ),
                  SizedBox(height: 10,),
                  Text(
                    '택시',
                    style: TextStyle(fontSize: 20),
                  ),
                ],
              ),
              Column(
                children: [
                  Image.network("https://pds.joongang.co.kr/news/component/htmlphoto_mmdata/201702/18/htm_20170218114544126552.jpg",
                    width: 80,
                    height: 80,
                    fit: BoxFit.cover,
                  ),
                  SizedBox(height: 10,),
                  Text(
                    '택시',
                    style: TextStyle(fontSize: 20),
                  ),
                ],
              ),
              Column(
                children: [
                  Image.network("https://pds.joongang.co.kr/news/component/htmlphoto_mmdata/201702/18/htm_20170218114544126552.jpg",
                    width: 80,
                    height: 80,
                    fit: BoxFit.cover,
                  ),
                  SizedBox(height: 10,),
                  Text(
                    '택시',
                    style: TextStyle(fontSize: 20),
                  ),
                ],
              ),
            ],
          ),
          SizedBox(height: 30,),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Column(
                children: [
                  Image.network("https://pds.joongang.co.kr/news/component/htmlphoto_mmdata/201702/18/htm_20170218114544126552.jpg",
                    width: 80,
                    height: 80,
                    fit: BoxFit.cover,
                  ),
                  SizedBox(height: 10,),
                  Text(
                    '택시',
                    style: TextStyle(fontSize: 20),
                  ),
                ],
              ),
              Column(
                children: [
                  Image.network("https://pds.joongang.co.kr/news/component/htmlphoto_mmdata/201702/18/htm_20170218114544126552.jpg",
                    width: 80,
                    height: 80,
                    fit: BoxFit.cover,
                  ),
                  SizedBox(height: 10,),
                  Text(
                    '택시',
                    style: TextStyle(fontSize: 20),
                  ),
                ],
              ),
              Column(
                children: [
                  Image.network("https://pds.joongang.co.kr/news/component/htmlphoto_mmdata/201702/18/htm_20170218114544126552.jpg",
                    width: 80,
                    height: 80,
                    fit: BoxFit.cover,
                  ),
                  SizedBox(height: 10,),
                  Text(
                    '택시',
                    style: TextStyle(fontSize: 20),
                  ),
                ],
              ),
              SizedBox(
                height: 80,
                width: 80,
              )
            ],
          ),
        ],
      ),
    );
  }
}
