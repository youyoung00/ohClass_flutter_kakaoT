import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:kakao_t_ui_exam/data/fake_data.dart';
import 'package:kakao_t_ui_exam/model/ad.dart';
import 'package:kakao_t_ui_exam/model/menu.dart';
import 'package:kakao_t_ui_exam/ui/kakao_t/detail_screen.dart';
import 'components/ad_view.dart';
import 'components/menu_widget.dart';
import 'package:carousel_slider/carousel_controller.dart';

class KakaoTScreen extends StatefulWidget {

  KakaoTScreen({Key key}) : super(key: key);

  @override
  State<KakaoTScreen> createState() => _KakaoTScreenState();
}

class _KakaoTScreenState extends State<KakaoTScreen> {

  int _index = 0;

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
      body: _buildBody(context),
    );
  }

  Widget _buildBody(BuildContext context) {
    print('안녕하세요');
    return Padding(
      padding: const EdgeInsets.all(20.0),
      child: ListView(
        children: [
          _buildMenu2(context), // 리스트 안에 리스트를 넣을 경우 : 스프레드 연산자 ...
          _buildAds(controller),
          _buildNotice()
        ],
      ),
    );
  }

  Widget _buildMenu2(BuildContext context) {
    return GridView.count(
        childAspectRatio: 2 / 3,
        crossAxisCount: 4,
        shrinkWrap: true,
        physics: NeverScrollableScrollPhysics(),
        children: fakeMenus
            .map((menu) => GestureDetector(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => DetailScreen(
                      menu: menu,
                    )),
                  );
                },
                child: MenuWidget(
                  menu: menu,
                )))
            .toList());
  }

  List<Widget> _buildMenu() {
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
    return Stack(
      alignment: Alignment.bottomCenter,
      children: [
        CarouselSlider(
          options: CarouselOptions(
            height: 150,
            viewportFraction: 0.8,
            enableInfiniteScroll: true,
            autoPlay: true,
            autoPlayCurve: Curves.ease,
            onPageChanged: (index, _){
              setState(() {
                _index = index;
              });
            }
          ),
          items: fakeAds.map((Ad e) => ADView(ad: e,)).toList(),

        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: fakeAds.asMap().entries.map((e) {
            return Container(
              width: 12.0,
              height: 12.0,
              margin: EdgeInsets.symmetric(vertical: 8.0, horizontal: 4.0),
              decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  color: e.key == _index ? Colors.black : Colors.grey
              )
            );
          }).toList()
        )
      ],
    );
      // PageView(
      // scrollDirection: Axis.horizontal,
      // controller: controller,
      // children: fakeAds
      //     .map((e) => ADView(
      //           ad: e,
      //         ))
      //     .toList(),




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

  }

  Widget _buildNotice() {
    return ListView(
      // shrinkWrap: true, // 스크롤이 안되고, 사이즈가 있는 Column 처럼 동작.
      shrinkWrap: true,
      physics: NeverScrollableScrollPhysics(),
      children: List.generate(
          50,
          (index) => ListTile(
                leading: Icon(Icons.notifications),
                trailing: Icon(Icons.notifications_outlined),
                title: Text('공지 $index'),
              )),
    );
  }
}
