import 'package:flutter/material.dart';
import 'package:kakao_t_ui_exam/data/fake_data.dart';
import 'package:kakao_t_ui_exam/model/menu.dart';
import 'package:kakao_t_ui_exam/ui/home/components/ad_view.dart';
import 'package:kakao_t_ui_exam/ui/home/components/menu_widget.dart';

class HomeScreen extends StatelessWidget {
  HomeScreen({Key key}) : super(key: key);
  final PageController controller = PageController(initialPage: 0);

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

  Widget _buildBody() {
    print('안녕하세요');
    return Padding(
      padding: const EdgeInsets.all(20.0),
      child: ListView(
        children: [
          _buildMenu2(),// 리스트 안에 리스트를 넣을 경우 : 스프레드 연산자 ...
          _buildAds(controller),
          _buildNotice()
        ],
      ),
    );
  }

  Widget _buildMenu2(){
    return GridView.count(
      childAspectRatio: 2 / 3,
      crossAxisCount: 4,
      shrinkWrap: true,
      physics: NeverScrollableScrollPhysics(),
      children: fakeMenus.map((e) => MenuWidget(menu: e,)).toList()
    );
  }

  List<Widget> _buildMenu (){
    return [
      Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          // MenuWidget(),
          Column(
            children: [
              Image.network(
                "https://pds.joongang.co.kr/news/component/htmlphoto_mmdata/201702/18/htm_20170218114544126552.jpg",
                width: 80,
                height: 80,
                fit: BoxFit.cover,
              ),
              SizedBox(
                height: 10,
              ),
              Text(
                '택시',
                style: TextStyle(fontSize: 20),
              ),
            ],
          ),
          Column(
            children: [
              Image.network(
                "https://pds.joongang.co.kr/news/component/htmlphoto_mmdata/201702/18/htm_20170218114544126552.jpg",
                width: 80,
                height: 80,
                fit: BoxFit.cover,
              ),
              SizedBox(
                height: 10,
              ),
              Text(
                '택시',
                style: TextStyle(fontSize: 20),
              ),
            ],
          ),
          Column(
            children: [
              Image.network(
                "https://pds.joongang.co.kr/news/component/htmlphoto_mmdata/201702/18/htm_20170218114544126552.jpg",
                width: 80,
                height: 80,
                fit: BoxFit.cover,
              ),
              SizedBox(
                height: 10,
              ),
              Text(
                '택시',
                style: TextStyle(fontSize: 20),
              ),
            ],
          ),
        ],
      ),
      SizedBox(
        height: 30,
      ),
      Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Column(
            children: [
              Image.network(
                "https://pds.joongang.co.kr/news/component/htmlphoto_mmdata/201702/18/htm_20170218114544126552.jpg",
                width: 80,
                height: 80,
                fit: BoxFit.cover,
              ),
              SizedBox(
                height: 10,
              ),
              Text(
                '택시',
                style: TextStyle(fontSize: 20),
              ),
            ],
          ),
          Column(
            children: [
              Image.network(
                "https://pds.joongang.co.kr/news/component/htmlphoto_mmdata/201702/18/htm_20170218114544126552.jpg",
                width: 80,
                height: 80,
                fit: BoxFit.cover,
              ),
              SizedBox(
                height: 10,
              ),
              Text(
                '택시',
                style: TextStyle(fontSize: 20),
              ),
            ],
          ),
          Column(
            children: [
              Image.network(
                "https://pds.joongang.co.kr/news/component/htmlphoto_mmdata/201702/18/htm_20170218114544126552.jpg",
                width: 80,
                height: 80,
                fit: BoxFit.cover,
              ),
              SizedBox(
                height: 10,
              ),
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
    ];
  }

  Widget _buildAds(PageController controller) {
    return SizedBox(
          height: 150,
          child: PageView(
            scrollDirection: Axis.horizontal,
            controller: controller,
            children: fakeAds.map((e) => ADView(ad: e,)).toList(),
            // children: <Widget>[
            //   ADView(
            //     ad: fakeAds[0]
            //     // title: '일어나 회사가야지',
            //     // color: Colors.red,
            //   ),
            //   ADView(
            //     ad: fakeAds[1],
            //     // title: '제목',
            //     // color: Colors.blue,
            //   ),
            //   ADView(
            //     ad: fakeAds[2],
            //     // title: '제목',
            //     // color: Colors.yellow,
            //   ),
            // ],
          ),
        );
  }

  Widget _buildNotice(){
    return ListView(
      // shrinkWrap: true, // 스크롤이 안되고, 사이즈가 있는 Column 처럼 동작.
      shrinkWrap: true,
      physics: NeverScrollableScrollPhysics(),
      children: List.generate(50, (index) => ListTile(
        leading: Icon(Icons.notifications),
        trailing: Icon(Icons.notifications_outlined),
        title: Text('공지 $index'),
      )),
    );
  }
}


