import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:new_project/page/coffee_menu.dart';

class PointShop extends StatelessWidget {
  const PointShop({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          '포인트샵',
          style: TextStyle(
            color: Colors.black,
            fontSize: 14.0,
          ),
        ),
        actions: [
          TextButton(
              onPressed: () {
                Get.to(PurchaseList());
              },
              child: Text(
                '구매내역',
                style: TextStyle(
                    color: Color(0xff5450D3),
                    fontSize: 16,
                    fontWeight: FontWeight.w500),
              ))
        ],
        backgroundColor: Colors.white,
        elevation: 0.0,
        centerTitle: true,
        leading: IconButton(
          onPressed: () {
            Get.back();
          },
          icon: Icon(Icons.arrow_back_ios_rounded),
          color: Color(0xff878C9E),
        ),
      ),
      backgroundColor: Colors.white,
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.only(left: 28.0, right: 28.0, top: 26.0),
            child: SizedBox(
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text.rich(
                    TextSpan(
                      text: '현재 1,234P 보유 중이에요 \n',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 22,
                        color: Color(0xff2E313D),
                      ),
                      children: <TextSpan>[
                        TextSpan(
                            text: '어떤 상품',
                            style: TextStyle(
                              color: Color(0xff5450D3),
                            ),),
                        TextSpan(text: '을 구매할까요!'),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
          Expanded(
            child: GridView.count(
                crossAxisCount: 3,
                padding: EdgeInsets.only(
                    left: 27.0, top: 48.0, bottom: 48.0, right: 27.0),
                children: <Widget>[
                  Container(
                    width: 96,
                    height: 96,
                    margin: const EdgeInsets.all(8.0),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(35),
                      border: Border.all(
                        width: 1,
                        color: Color(0xffE7EAF6),
                      ),
                    ),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Image.asset(
                          'assets/images/pointshop_img01.png',
                          width: 40.0,
                          height: 40.0,
                        ),
                        SizedBox(height: 10),
                        Text(
                          '치킨/피자',
                          style: TextStyle(
                            fontSize: 14,
                            color: Color(0xff2E313D),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    width: 96,
                    height: 96,
                    margin: const EdgeInsets.all(8.0),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(35),
                      border: Border.all(
                        width: 1,
                        color: Color(0xffE7EAF6),
                      ),
                    ),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Image.asset(
                          'assets/images/pointshop_img02.png',
                          width: 40.0,
                          height: 40.0,
                        ),
                        SizedBox(height: 10),
                        Text(
                          '편의점',
                          style: TextStyle(
                            fontSize: 14,
                            color: Color(0xff2E313D),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    width: 96,
                    height: 96,
                    margin: const EdgeInsets.all(8.0),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(35),
                      border: Border.all(
                        width: 1,
                        color: Color(0xffE7EAF6),
                      ),
                    ),
                    child: TextButton(
                      onPressed: () {
                        Get.to(CoffeeMenu());
                      },
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Image.asset(
                            'assets/images/pointshop_img03.png',
                            width: 40.0,
                            height: 40.0,
                          ),
                          SizedBox(height: 10),
                          Text(
                            '커피/음료',
                            style: TextStyle(
                              fontSize: 14,
                              color: Color(0xff2E313D),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  Container(
                    width: 96,
                    height: 96,
                    margin: const EdgeInsets.all(8.0),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(35),
                      border: Border.all(
                        width: 1,
                        color: Color(0xffE7EAF6),
                      ),
                    ),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Image.asset(
                          'assets/images/pointshop_img04.png',
                          width: 40.0,
                          height: 40.0,
                        ),
                        SizedBox(height: 10),
                        Text(
                          '버거',
                          style: TextStyle(
                            fontSize: 14,
                            color: Color(0xff2E313D),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    width: 96,
                    height: 96,
                    margin: const EdgeInsets.all(8.0),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(35),
                      border: Border.all(
                        width: 1,
                        color: Color(0xffE7EAF6),
                      ),
                    ),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Image.asset(
                          'assets/images/pointshop_img05.png',
                          width: 40.0,
                          height: 40.0,
                        ),
                        SizedBox(height: 10),
                        Text(
                          '베이커리',
                          style: TextStyle(
                            fontSize: 14,
                            color: Color(0xff2E313D),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    width: 96,
                    height: 96,
                    margin: const EdgeInsets.all(8.0),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(35),
                      border: Border.all(
                        width: 1,
                        color: Color(0xffE7EAF6),
                      ),
                    ),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Image.asset(
                          'assets/images/pointshop_img06.png',
                          width: 40.0,
                          height: 40.0,
                        ),
                        SizedBox(height: 10),
                        Text(
                          '아이스크림',
                          style: TextStyle(
                            fontSize: 14,
                            color: Color(0xff2E313D),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    width: 96,
                    height: 96,
                    margin: const EdgeInsets.all(8.0),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(35),
                      border: Border.all(
                        width: 1,
                        color: Color(0xffE7EAF6),
                      ),
                    ),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Image.asset(
                          'assets/images/pointshop_img07.png',
                          width: 40.0,
                          height: 40.0,
                        ),
                        SizedBox(height: 10),
                        Text(
                          '외식',
                          style: TextStyle(
                            fontSize: 14,
                            color: Color(0xff2E313D),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    width: 96,
                    height: 96,
                    margin: const EdgeInsets.all(8.0),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(35),
                      border: Border.all(
                        width: 1,
                        color: Color(0xffE7EAF6),
                      ),
                    ),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Image.asset(
                          'assets/images/pointshop_img08.png',
                          width: 40.0,
                          height: 40.0,
                        ),
                        SizedBox(height: 10),
                        Text(
                          '영화/도서',
                          style: TextStyle(
                            fontSize: 14,
                            color: Color(0xff2E313D),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    width: 96,
                    height: 96,
                    margin: const EdgeInsets.all(8.0),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(35),
                      border: Border.all(
                        width: 1,
                        color: Color(0xffE7EAF6),
                      ),
                    ),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Image.asset(
                          'assets/images/pointshop_img09.png',
                          width: 40.0,
                          height: 40.0,
                        ),
                        SizedBox(height: 10),
                        Text(
                          '통신사',
                          style: TextStyle(
                            fontSize: 14,
                            color: Color(0xff2E313D),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    width: 96,
                    height: 96,
                    margin: const EdgeInsets.all(8.0),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(35),
                      border: Border.all(
                        width: 1,
                        color: Color(0xffE7EAF6),
                      ),
                    ),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Image.asset(
                          'assets/images/pointshop_img10.png',
                          width: 40.0,
                          height: 40.0,
                        ),
                        SizedBox(height: 10),
                        Text(
                          '상품권',
                          style: TextStyle(
                            fontSize: 14,
                            color: Color(0xff2E313D),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    width: 96,
                    height: 96,
                    margin: const EdgeInsets.all(8.0),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(35),
                      border: Border.all(
                        width: 1,
                        color: Color(0xffE7EAF6),
                      ),
                    ),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Image.asset(
                          'assets/images/pointshop_img11.png',
                          width: 40.0,
                          height: 40.0,
                        ),
                        SizedBox(height: 10),
                        Text(
                          '헤어/뷰티',
                          style: TextStyle(
                            fontSize: 14,
                            color: Color(0xff2E313D),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    width: 96,
                    height: 96,
                    margin: const EdgeInsets.all(8.0),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(35),
                      border: Border.all(
                        width: 1,
                        color: Color(0xffE7EAF6),
                      ),
                    ),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Image.asset(
                          'assets/images/pointshop_img12.png',
                          width: 40.0,
                          height: 40.0,
                        ),
                        SizedBox(height: 10),
                        Text(
                          '여행',
                          style: TextStyle(
                            fontSize: 14,
                            color: Color(0xff2E313D),
                          ),
                        ),
                      ],
                    ),
                  ),
                ]),
          ),
        ],
      ),
    );
  }
}

// 구매내역
class PurchaseList extends StatelessWidget {
  const PurchaseList({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          '구매내역',
          style: TextStyle(
            color: Colors.black,
            fontSize: 14.0,
          ),
        ),
        backgroundColor: Colors.white,
        elevation: 0.0,
        centerTitle: true,
        leading: IconButton(
          onPressed: () {
            Get.back();
          },
          icon: Icon(Icons.arrow_back_ios_rounded),
          color: Color(0xff878C9E),
        ),
      ),
      backgroundColor: Colors.white,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Column(
              children: [
                Image.asset('assets/images/purchase_list_none.png'),
                SizedBox(
                  height: 16,
                ),
                Text(
                  '아직 구매내역이 비어있어요.\n다양한 상품 할인 받고 구매해보세요.',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    color: Color(0xff878C9E),
                  ),
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
