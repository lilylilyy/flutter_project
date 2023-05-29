import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:new_project/page/pointshop_page.dart';

// void main() => runApp(MyApp());
void main() => runApp(GetMaterialApp(home: HomePage()));

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'Charactor card',
      debugShowCheckedModeBanner: false,
      home: HomePage(),
      theme: ThemeData(fontFamily: 'Pretendard'),
    );
  }
}

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  var titleList = ['빽다방', 'GS25', '네이버페이 포인트쿠폰'];
  var imageList = [
    'assets/images/point_img01',
    'assets/images/point_img01',
    'assets/images/point_img01',
  ];
  var textList = [
    '1',
    '2',
    '3',
  ];

  // 탭을 이동할 때 쓸 변수
  int _selectedIndex = 0;

  // 텍스트 스타일
  static const TextStyle optionStyle = TextStyle(
      fontSize: 12.0, fontWeight: FontWeight.bold, color: Color(0xff2E313D));
  static const List _widgetOptions = [
    Text(
      'Index 0: 홈',
      style: TextStyle(color: Colors.black),
    ),
    Text(
      'Index 1: 내 지갑',
      style: optionStyle,
    ),
    Text(
      'Index 2: 이벤트',
      style: optionStyle,
    ),
    Text(
      'Index 3: 마이',
      style: optionStyle,
    ),
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Container(
            child: Row(
              children: [
                Image.asset(
                  'assets/images/user_img.png',
                  width: 24.0,
                  height: 24.0,
                ),
                SizedBox(width: 8.0),
                Text(
                  '1,234 P 모았어요!',
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 14.0,
                  ),
                ),
                SizedBox(width: 5.0),
                Image.asset('assets/images/arrow_right2.png'),
              ],
            ),
          ),
          backgroundColor: Color(0xffF5F7FF),
          elevation: 0.0,
          // leading: BackButton(
          //   color: Colors.black,
          // ),
        ),
        backgroundColor: Color(0xffF5F7FF),
        body: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Center(
                child: Padding(
                  padding: const EdgeInsets.only(
                    left: 20.0,
                    right: 20.0,
                    top: 8.0,
                    bottom: 20.0,
                  ),
                  child: Column(
                    children: [
                      SizedBox(
                        height: 330,
                        child: DecoratedBox(
                          decoration: BoxDecoration(
                            color: Colors.deepPurpleAccent,
                            borderRadius: BorderRadius.circular(10),
                            // image: const DecorationImage(
                            //     image:
                            //     AssetImage('assets/images/main_azi_01.png')),
                          ),
                          child: Column(children: [
                            SizedBox(
                              height: 24.0,
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Image.asset('assets/images/place_icon.png'),
                                SizedBox(width: 4),
                                Text(
                                  '현재 강남구 서초동 체크인',
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontWeight: FontWeight.bold,
                                    fontSize: 16.0,
                                  ),
                                ),
                              ],
                            ),
                            Text(
                              '오늘의 걸음 수는 5,000 이에요.',
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 12.0,
                              ),
                            ),
                            Image.asset('assets/images/main_azi_01.png'),
                            Container(
                              width: 115,
                              height: 36,
                              decoration: BoxDecoration(
                                color: Colors.white.withOpacity(0.2),
                                borderRadius: BorderRadius.circular(100),
                                border: Border.all(
                                  color: Colors.white,
                                ),
                              ),
                              alignment: Alignment.topCenter,
                              child: TextButton(
                                onPressed: () {},
                                child: Row(
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Image.asset('assets/images/point_logo.png'),
                                    SizedBox(width: 4),
                                    Text(
                                      '휴식하기',
                                      style: TextStyle(
                                        fontWeight: FontWeight.w500,
                                        fontSize: 13,
                                        color: Colors.white,
                                      ),
                                    ),
                                    SizedBox(width: 4),
                                    // Text(
                                    //   '25',
                                    //   style: TextStyle(
                                    //     fontWeight: FontWeight.w500,
                                    //     fontSize: 14,
                                    //     color: Colors.white,
                                    //   ),
                                    // ),
                                  ],
                                ),
                              ),
                            ),
                          ]),
                        ),
                      ),
                    ],
                  ),
                ),
              ),

              // 바로적립, 미션적립
              Center(
                child: Padding(
                  padding: const EdgeInsets.only(left: 28.0, right: 28.0),
                  child: Row(
                    children: [
                      Expanded(
                        child: Container(
                          padding: EdgeInsets.only(left:16,right:16,bottom:16),
                          height: 160,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            color: Colors.white,
                            boxShadow: [
                              BoxShadow(
                                color: Color(0xffE7EAF6),
                                offset: Offset(2, 2),
                                blurRadius: 15,
                              )
                            ],
                          ),
                          child: Column(
                            children: [
                              const Expanded(
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  children: [
                                    Text(
                                      '바로적립',
                                      style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                        fontSize: 18.0,
                                        color: Color(0xff5450D3),
                                      ),
                                    ),
                                    SizedBox(
                                      width: 4.0,
                                    ),
                                    Text(
                                      '0/10',
                                      style: TextStyle(
                                        color: Color(0xff585D6E),
                                        backgroundColor: Color(0xffF5F7FF),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              const Text('영상 광고 시청 하고 20P 받기'),
                              Container(
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.end,
                                  children: [
                                    Image.asset(
                                        'assets/images/main_mission3.png'),
                                  ],
                                ),
                              )
                            ],
                          ),
                        ),
                      ),
                      SizedBox(width: 21),
                      Expanded(
                        child: Container(
                          padding: EdgeInsets.only(left:16,right:16,bottom:16),
                          height: 160,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            color: Colors.white,
                            boxShadow: const [
                              BoxShadow(
                                color: Color(0xffE7EAF6),
                                offset: Offset(2, 2),
                                blurRadius: 15,
                              )
                            ],
                          ),
                          child: Column(
                            children: [
                              const Expanded(
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  children: [
                                    Text(
                                      '미션적립',
                                      style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                        fontSize: 18.0,
                                        color: Color(0xff5450D3),
                                      ),
                                    ),
                                    SizedBox(
                                      width: 4.0,
                                    ),
                                    Text(
                                      '무제한',
                                      style: TextStyle(
                                        color: Color(0xff585D6E),
                                        backgroundColor: Color(0xffF5F7FF),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              const Text('원하는 미션 골라 참여하고 포인트 받기'),
                              Container(
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.end,
                                  children: [
                                    Image.asset(
                                        'assets/images/main_mission4.png'),
                                  ],
                                ),
                              )
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              SizedBox(
                height: 20,
              ),

              // 일일미션
              Padding(
                padding: const EdgeInsets.only(left: 28.0, right: 28.0),
                child: Container(
                  padding: EdgeInsets.only(
                      left: 16.0, top: 22.0, bottom: 22.0, right: 16.0),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: Colors.white,
                    boxShadow: const [
                      BoxShadow(
                        color: Color(0xffE7EAF6),
                        offset: Offset(2, 2),
                        blurRadius: 15,
                      )
                    ],
                  ),
                  child: Row(
                    children: [
                      Image.asset('assets/images/main_mission1.png'),
                      SizedBox(
                        width: 12.0,
                      ),
                      const Expanded(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              '일일미션',
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 18.0,
                                color: Color(0xff5450D3),
                              ),
                            ),
                            SizedBox(
                              height: 4.0,
                            ),
                            Text(
                              '돌림판 돌리고 최대 500P 받기',
                              style: TextStyle(color: Color(0xff585D6E)),
                            ),
                          ],
                        ),
                      ),
                      Image.asset('assets/images/arrow_right.png'),
                    ],
                  ),
                ),
              ),
              SizedBox(
                height: 28,
              ),

              // 휴식하기
              Padding(
                padding: const EdgeInsets.only(left: 28.0, right: 28.0),
                child: Container(
                  padding: const EdgeInsets.only(
                      left: 16.0, top: 22.0, bottom: 22.0, right: 16.0),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: Colors.white,
                    boxShadow: [
                      BoxShadow(
                        color: Color(0xffE7EAF6),
                        offset: Offset(2, 2),
                        blurRadius: 15,
                      )
                    ],
                  ),
                  child: Row(
                    children: [
                      Image.asset('assets/images/main_mission2.png'),
                      SizedBox(
                        width: 12.0,
                      ),
                      Expanded(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              '휴식하기',
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 18.0,
                                color: Color(0xff5450D3),
                              ),
                            ),
                            SizedBox(
                              height: 4.0,
                            ),
                            Text(
                              '아지트에서 특별한 휴식을 경험하세요!',
                              style: TextStyle(color: Color(0xff585D6E)),
                            ),
                          ],
                        ),
                      ),
                      Image.asset('assets/images/arrow_right.png'),
                    ],
                  ),
                ),
              ),

              SizedBox(
                height: 20,
              ),

              // 포인트샵
              Padding(
                padding: const EdgeInsets.only(left: 28.0, right: 28.0),
                child: Container(
                  padding: const EdgeInsets.all(20),
                  color: Colors.white,
                  child: Expanded(
                    child: Column(
                      children: [
                        Container(
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                '포인트샵',
                                style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontSize: 12.0,
                                  color: Color(0xff5450D3),
                                ),
                              ),
                              SizedBox(
                                height: 6.0,
                              ),

                              Text(
                                '차곡차곡 모은 포인트로 \n 다른 사람들은 아래 상품 구매했어요',
                                style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontSize: 16.0,
                                ),
                              ),
                              SizedBox(
                                height: 24.0,
                              ),

                              // 리스트뷰 빌더,,,;;
                              // ListView.builder(
                              //     itemCount: titleList.length,
                              //     itemBuilder: (context, index) {
                              //       return Card(
                              //         child: Row(
                              //           children: [
                              //             SizedBox(
                              //               width: 100,
                              //               height: 100,
                              //               child: Image.asset(imageList[index]),
                              //             ),
                              //             Padding(
                              //               padding: const EdgeInsets.all(10),
                              //               child: Column(
                              //                 children: [
                              //                   Text(
                              //                     titleList[index],
                              //                     style: const TextStyle(
                              //                       fontSize: 22.0,
                              //                     ),
                              //                   ),
                              //                   SizedBox(
                              //                     child: Text(
                              //                       textList[index],
                              //                     ),
                              //                   )
                              //                 ],
                              //               ),
                              //             ),
                              //           ],
                              //         ),
                              //       );
                              //     },
                              // )

                              Container(
                                child: Row(
                                  children: [
                                    Image.asset(
                                        'assets/images/point_img01.png'),
                                    SizedBox(
                                      width: 12.0,
                                    ),
                                    Expanded(
                                      child: Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          Text(
                                            '빽다방',
                                            style: TextStyle(
                                              fontSize: 10.0,
                                              color: Color(0xff6F7486),
                                            ),
                                          ),
                                          SizedBox(
                                            height: 4.0,
                                          ),
                                          Text(
                                            '앗메리카노(ICED)',
                                            style: TextStyle(
                                                fontWeight: FontWeight.w500,
                                                fontSize: 14.0,
                                                color: Color(0xff2E313D)),
                                          ),
                                        ],
                                      ),
                                    ),
                                    Text(
                                      '1446',
                                      style: TextStyle(
                                          fontWeight: FontWeight.bold,
                                          fontSize: 14,
                                          color: Color(0xff3634B3)),
                                    ),
                                    Image.asset('assets/images/point_logo.png'),
                                  ],
                                ),
                              ),
                              SizedBox(
                                height: 20.0,
                              ),
                              Container(
                                child: Row(
                                  children: [
                                    Image.asset(
                                        'assets/images/point_img02.png'),
                                    SizedBox(
                                      width: 12.0,
                                    ),
                                    Expanded(
                                      child: Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          Text(
                                            'GS25',
                                            style: TextStyle(
                                              fontSize: 10.0,
                                              color: Color(0xff6F7486),
                                            ),
                                          ),
                                          SizedBox(
                                            height: 4.0,
                                          ),
                                          Text(
                                            '농심)신라면(봉지)',
                                            style: TextStyle(
                                                fontWeight: FontWeight.w500,
                                                fontSize: 14.0,
                                                color: Color(0xff2E313D)),
                                          ),
                                        ],
                                      ),
                                    ),
                                    Text(
                                      '723',
                                      style: TextStyle(
                                          fontWeight: FontWeight.bold,
                                          fontSize: 14,
                                          color: Color(0xff3634B3)),
                                    ),
                                    Image.asset('assets/images/point_logo.png'),
                                  ],
                                ),
                              ),
                              SizedBox(
                                height: 20.0,
                              ),
                              Container(
                                child: Row(
                                  children: [
                                    Image.asset(
                                        'assets/images/point_img03.png'),
                                    SizedBox(
                                      width: 12.0,
                                    ),
                                    Expanded(
                                      child: Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          Text(
                                            '네이버페이 포인트쿠폰',
                                            style: TextStyle(
                                              fontSize: 10.0,
                                              color: Color(0xff6F7486),
                                            ),
                                          ),
                                          SizedBox(
                                            height: 4.0,
                                          ),
                                          Text(
                                            '네이버페이 포인트 1,000원',
                                            style: TextStyle(
                                                fontWeight: FontWeight.w500,
                                                fontSize: 14.0,
                                                color: Color(0xff2E313D)),
                                          ),
                                        ],
                                      ),
                                    ),
                                    Text(
                                      '762',
                                      style: TextStyle(
                                          fontSize: 14,
                                          fontWeight: FontWeight.bold,
                                          color: Color(0xff3634B3)),
                                    ),
                                    Image.asset('assets/images/point_logo.png'),
                                  ],
                                ),
                              )
                            ],
                          ),
                        ),
                        SizedBox(
                          height: 24.0,
                        ),

                        // 포인트샵 버튼
                        Container(
                          child: Container(
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(16),
                              color: Colors.white,
                            ),
                            child: OutlinedButton(
                              onPressed: () {
                                Get.to(PointShop());
                              },
                              style: OutlinedButton.styleFrom(
                                minimumSize: const Size.fromHeight(56),
                                backgroundColor: Colors.white,
                                shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(10)),
                              ),
                              child: Text(
                                '포인트샵 바로가기',
                                style: TextStyle(
                                  fontWeight: FontWeight.w500,
                                  fontSize: 16.0,
                                  color: Colors.black,
                                ),
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),

              SizedBox(
                height: 20,
              ),

              //이벤트
              Padding(
                padding: const EdgeInsets.only(left: 28.0, right: 28.0),
                child: Container(
                  padding: const EdgeInsets.only(
                      left: 16.0, top: 22.0, bottom: 22.0, right: 16.0),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: Colors.white,
                    boxShadow: [
                      BoxShadow(
                        color: Color(0xffE7EAF6),
                        offset: Offset(2, 2),
                        blurRadius: 15,
                      )
                    ],
                  ),
                  child: Center(
                    child: Expanded(
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            '이벤트',
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 12.0,
                              color: Color(0xff5450D3),
                            ),
                          ),
                          SizedBox(height: 6),
                          Text(
                            '42일간 진행되는 특급 혜택!\n포인트샵 50% 할인 이벤트',
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 16.0,
                              color: Color(0xff2E313D),
                            ),
                          ),
                          Container(
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.end,
                              children: [
                                Flexible(
                                  child: Image.asset(
                                      'assets/images/main_event.png'),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: 20,
              ),

              // 새로워진 아지트
              Padding(
                padding: const EdgeInsets.only(left: 28.0, right: 28.0),
                child: Container(
                  padding: EdgeInsets.only(
                      left: 16.0, top: 22.0, bottom: 22.0, right: 16.0),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: Color(0xff2E313D),
                    boxShadow: [
                      BoxShadow(
                        color: Color(0xffE7EAF6),
                        offset: Offset(2, 2),
                        blurRadius: 15,
                      )
                    ],
                  ),
                  child: Row(
                    children: [
                      SizedBox(
                        width: 12.0,
                      ),
                      Expanded(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              '새로워진 아지트, 어떻게 사용하나요?',
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 12.0,
                                color: Colors.white,
                              ),
                            ),
                            SizedBox(
                              height: 4.0,
                            ),
                            Text(
                              '아지트 이용가이드',
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 18.0,
                              ),
                            ),
                          ],
                        ),
                      ),
                      Image.asset('assets/images/main_people.png'),
                    ],
                  ),
                ),
              ),
              SizedBox(
                height: 20,
              ),

              // 하루 최대 10p보너스
              Container(
                padding: EdgeInsets.only(
                    left: 16.0, top: 22.0, bottom: 22.0, right: 16.0),
                decoration: BoxDecoration(
                  color: Color(0xff5450D3),
                  boxShadow: [
                    BoxShadow(
                      color: Color(0xffE7EAF6),
                      offset: Offset(2, 2),
                      blurRadius: 15,
                    )
                  ],
                ),
                child: Row(
                  children: [
                    SizedBox(
                      width: 12.0,
                    ),
                    Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            '하루 최대 10P 보너스 포인트 받는 법',
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 12.0,
                              color: Colors.white,
                            ),
                          ),
                          SizedBox(
                            height: 4.0,
                          ),
                        ],
                      ),
                    ),
                    Image.asset('assets/images/arrow_right.png'),
                  ],
                ),
              ),
            ],
          ),
        ),

        // 하단 메뉴
        bottomNavigationBar: BottomNavigationBar(
          items: const <BottomNavigationBarItem>[
            BottomNavigationBarItem(
              icon: Icon(Icons.home),
              label: '홈',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.monetization_on),
              label: '내 지갑',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.star),
              label: '이벤트',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.person),
              label: '마이',
            ),
          ],
          currentIndex: _selectedIndex,
          onTap: _onItemTapped,
          type: BottomNavigationBarType.fixed,
          backgroundColor: Colors.white,
          selectedItemColor: Color(0xff2E313D),
          unselectedItemColor: Color(0xffE7EAF6),
          elevation: 0.0,
        ));
  }
}
