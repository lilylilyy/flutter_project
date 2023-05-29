import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:new_project/page/product.dart';

void main() {}

class CoffeeMenu extends StatefulWidget {
  const CoffeeMenu({Key? key}) : super(key: key);

  @override
  State<CoffeeMenu> createState() => _CoffeeMenuState();
}

class _CoffeeMenuState extends State<CoffeeMenu> {
  var titleList = ['스타벅스', '투썸플레이스', '이디야커피', '이디야커피'];

  var imageList = [
    'assets/images/coffee_img01.png',
    'assets/images/coffee_img02.png',
    'assets/images/coffee_img03.png',
    'assets/images/coffee_img04.png',
  ];
  var textList = ['카페 아메리카노T', '아메리카노(R)', '(L)핫 아메리카노)', '이디야 5000원 금액권'];

  var priceList = [
    '3307',
    '4000',
    '3300',
    '2334',
  ];

  // bottomSheet  리스트
  var bottomSheetTitle = [
    '빽다방',
    '스타벅스',
    '엔제리너스',
    '이디야커피',
    '잠바주스',
    '커피빈',
    '탐앤탐스',
    '투썸플레이스',
    '파스쿠찌'
  ];

  var bottomSheetImage = [
    'assets/images/bottomsheet_coffee01.png',
    'assets/images/bottomsheet_coffee02.png',
    'assets/images/bottomsheet_coffee03.png',
    'assets/images/bottomsheet_coffee04.png',
    'assets/images/bottomsheet_coffee05.png',
    'assets/images/bottomsheet_coffee06.png',
    'assets/images/bottomsheet_coffee07.png',
    'assets/images/bottomsheet_coffee08.png',
    'assets/images/bottomsheet_coffee09.png',
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text(
            '커피/음료',
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
        body: Column(
          children: [
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Column(
                children: [
                  Padding(
                    padding: EdgeInsets.only(
                        left: 24.0, top: 16.0, bottom: 24.0, right: 24.0),
                    child: Container(
                      child: Row(
                        children: [
                          Container(
                            child: TextButton(
                              style: TextButton.styleFrom(
                                minimumSize: Size.zero,
                                padding: EdgeInsets.zero,
                                tapTargetSize: MaterialTapTargetSize.shrinkWrap,
                              ),

                              // bottomSheet
                              onPressed: () {
                                showModalBottomSheet(
                                  context: context,
                                  isScrollControlled: true,
                                  backgroundColor: Colors.transparent,
                                  builder: (context) => Container(
                                    height: MediaQuery.of(context).size.height *
                                        0.85,
                                    decoration: BoxDecoration(
                                      color: Colors.white,
                                      borderRadius: BorderRadius.only(
                                        topLeft: const Radius.circular(25.0),
                                        topRight: const Radius.circular(25.0),
                                      ),
                                    ),
                                    child: Container(
                                      child: Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          SizedBox(height: 20),
                                          Padding(
                                            padding: const EdgeInsets.only(
                                                left: 28.0, right: 28.0),
                                            child: Column(
                                              children: [
                                                Row(
                                                  children: [
                                                    Text(
                                                      '커피/음료',
                                                      style: TextStyle(
                                                        fontSize: 22,
                                                        color:
                                                            Color(0xff2E313D),
                                                        fontWeight:
                                                            FontWeight.bold,
                                                      ),
                                                    ),
                                                    Image.asset(
                                                        'assets/images/bottomsheet_ice_coffee.png'),
                                                  ],
                                                ),
                                              ],
                                            ),
                                          ),
                                          SizedBox(
                                            height: 16,
                                          ),
                                          Expanded(
                                            child: ListView.builder(
                                              itemCount: 9,
                                              itemBuilder: (context, index) {
                                                return Card(
                                                  child: Row(
                                                    children: [
                                                      Expanded(
                                                        child: Padding(
                                                          padding:
                                                              const EdgeInsets
                                                                      .only(
                                                                  left: 28.0, right: 28.0),
                                                          child: SizedBox(
                                                            height: 64,
                                                            child: Row(
                                                              children: [
                                                                Image.asset(
                                                                    bottomSheetImage[
                                                                        index]),
                                                                SizedBox(width:10),
                                                                Text(
                                                                  bottomSheetTitle[
                                                                      index],
                                                                  style:
                                                                      const TextStyle(
                                                                    fontSize:
                                                                        16.0,
                                                                    color: Color(
                                                                        0xff6F7486),
                                                                  ),
                                                                ),
                                                              ],
                                                            ),
                                                          ),
                                                        ),
                                                      ),
                                                      Container(
                                                        padding:
                                                        const EdgeInsets
                                                            .only(
                                                            right: 28.0),
                                                        child:  Image.asset(
                                                            'assets/images/arrow_right2.png'),
                                                      ),

                                                    ],
                                                  ),
                                                );
                                              },
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ),
                                );
                              },
                              child: Column(
                                children: [
                                  Image.asset(
                                    'assets/images/drink_00.png',
                                    width: 48.0,
                                    height: 48.0,
                                  ),
                                  SizedBox(height: 10),
                                  Text(
                                    '카테고리',
                                    style: TextStyle(
                                      fontSize: 10,
                                      color: Color(0xff2E313D),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                          SizedBox(width: 14),
                          SizedBox(
                            child: Column(
                              children: [
                                Image.asset(
                                  'assets/images/drink_01.png',
                                  width: 48.0,
                                  height: 48.0,
                                ),
                                SizedBox(height: 10),
                                Text(
                                  '빽다방',
                                  style: TextStyle(
                                    fontSize: 10,
                                    color: Color(0xff2E313D),
                                  ),
                                ),
                              ],
                            ),
                          ),
                          SizedBox(width: 14),
                          SizedBox(
                            child: Column(
                              children: [
                                Image.asset(
                                  'assets/images/drink_02.png',
                                  width: 48.0,
                                  height: 48.0,
                                ),
                                SizedBox(height: 10),
                                Text(
                                  '스타벅스',
                                  style: TextStyle(
                                    fontSize: 10,
                                    color: Color(0xff2E313D),
                                  ),
                                ),
                              ],
                            ),
                          ),
                          SizedBox(width: 14),
                          SizedBox(
                            child: Column(
                              children: [
                                Image.asset(
                                  'assets/images/drink_03.png',
                                  width: 48.0,
                                  height: 48.0,
                                ),
                                SizedBox(height: 10),
                                Text(
                                  '엔제리너스',
                                  style: TextStyle(
                                    fontSize: 10,
                                    color: Color(0xff2E313D),
                                  ),
                                ),
                              ],
                            ),
                          ),
                          SizedBox(width: 14),
                          SizedBox(
                            child: Column(
                              children: [
                                Image.asset(
                                  'assets/images/drink_04.png',
                                  width: 48.0,
                                  height: 48.0,
                                ),
                                SizedBox(height: 10),
                                Text(
                                  '이디야커피',
                                  style: TextStyle(
                                    fontSize: 10,
                                    color: Color(0xff2E313D),
                                  ),
                                ),
                              ],
                            ),
                          ),
                          SizedBox(width: 14),
                          SizedBox(
                            child: Column(
                              children: [
                                Image.asset(
                                  'assets/images/drink_06.png',
                                  width: 48.0,
                                  height: 48.0,
                                ),
                                SizedBox(height: 10),
                                Text(
                                  '잠바주스',
                                  style: TextStyle(
                                    fontSize: 10,
                                    color: Color(0xff2E313D),
                                  ),
                                ),
                              ],
                            ),
                          ),
                          SizedBox(width: 14),
                          SizedBox(
                            child: Column(
                              children: [
                                Image.asset(
                                  'assets/images/drink_07.png',
                                  width: 48.0,
                                  height: 48.0,
                                ),
                                SizedBox(height: 10),
                                Text(
                                  '커피빈',
                                  style: TextStyle(
                                    fontSize: 10,
                                    color: Color(0xff2E313D),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Divider(thickness: 1, height: 1, color: Color(0xffD9DDEB)),
            Expanded(
              child: Padding(
                padding: const EdgeInsets.all(28.0),
                // implement GridView.builder
                child: GridView.builder(
                    gridDelegate:
                        const SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 2,
                      mainAxisSpacing: 32,
                      crossAxisSpacing: 15,
                      childAspectRatio: 1 / 1.4,
                    ),
                    itemCount: titleList.length,
                    itemBuilder: (BuildContext ctx, index) {
                      return Container(
                        width: double.infinity,
                        // alignment: Alignment.center,
                        decoration: BoxDecoration(
                            // color: Colors.pinkAccent,
                            // borderRadius: BorderRadius.circular(15)
                            ),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            InkWell(
                              onTap: () {
                                Get.to(ProductDetail());
                              },
                              child: SizedBox(
                                child: Image.asset(
                                  imageList[index],
                                ),
                              ),
                            ),
                            SizedBox(
                              height: 8,
                            ),
                            Text(
                              titleList[index],
                              style: TextStyle(
                                fontSize: 10,
                                color: Color(0xff6F7486),
                              ),
                            ),
                            SizedBox(
                              height: 2,
                            ),
                            Text(
                              textList[index],
                              style: TextStyle(
                                fontSize: 14,
                                color: Color(0xff2E313D),
                              ),
                            ),
                            SizedBox(
                              height: 2,
                            ),
                            Row(
                              children: [
                                Text(
                                  priceList[index],
                                  style: TextStyle(
                                      fontSize: 14,
                                      color: Color(0xff3634B3),
                                      fontWeight: FontWeight.bold),
                                ),
                                Image.asset('assets/images/point_logo.png'),
                              ],
                            )
                          ],
                        ),
                      );
                    }),
              ),
            )
          ],
        ));
  }
}

// Product detail
class ProductDetail extends StatefulWidget {
  const ProductDetail({Key? key}) : super(key: key);

  @override
  State<ProductDetail> createState() => _ProductDetailState();
}

class _ProductDetailState extends State<ProductDetail> {
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
          Expanded(
            child: SingleChildScrollView(
              child: Column(
                children: [
                  SizedBox(
                    height: 24,
                  ),
                  SizedBox(
                    child: Padding(
                      padding: const EdgeInsets.only(left: 28.0, right: 28.0),
                      child: DecoratedBox(
                        decoration: BoxDecoration(),
                        child:
                            Image.asset('assets/images/product_detail_img.png'),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 24,
                  ),
                  SizedBox(
                    child: Padding(
                      padding: const EdgeInsets.only(left: 28.0, right: 28.0),
                      child: DecoratedBox(
                        decoration: BoxDecoration(),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              '스타벅스',
                              style: TextStyle(
                                color: Color(0xff878C9E),
                                fontSize: 14,
                                fontWeight: FontWeight.w500,
                              ),
                            ),
                            SizedBox(
                              height: 4,
                            ),
                            Text(
                              '카페 아메리카노 T',
                              style: TextStyle(
                                color: Color(0xff2E313D),
                                fontSize: 18,
                                fontWeight: FontWeight.w700,
                              ),
                            ),
                            SizedBox(
                              height: 4,
                            ),
                            Row(
                              children: [
                                Text(
                                  '50%',
                                  style: TextStyle(
                                    color: Color(0xffE94251),
                                    fontSize: 18,
                                    fontWeight: FontWeight.w700,
                                  ),
                                ),
                                SizedBox(
                                  width: 8,
                                ),
                                Text(
                                  '3,370',
                                  style: TextStyle(
                                    color: Color(0xff3634B3),
                                    fontSize: 18,
                                    fontWeight: FontWeight.w700,
                                  ),
                                ),
                                SizedBox(
                                  width: 2,
                                ),
                                Image.asset(
                                    'assets/images/product_detail_pointimg.png'),
                                SizedBox(
                                  width: 8,
                                ),
                                Text(
                                  '10340',
                                  style: TextStyle(
                                    decoration: TextDecoration.lineThrough,
                                    color: Color(0xffBDC1D1),
                                    fontSize: 14,
                                    fontWeight: FontWeight.w500,
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 24,
                  ),
                  Divider(thickness: 1, height: 1, color: Color(0xffD9DDEB)),
                  SizedBox(
                    height: 24,
                  ),
                  SizedBox(
                    child: Padding(
                      padding: const EdgeInsets.only(left: 28.0, right: 28.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            '상품정보',
                            style: TextStyle(
                              color: Color(0xff2E313D),
                              fontSize: 14,
                              fontWeight: FontWeight.w700,
                            ),
                          ),
                          SizedBox(
                            height: 12,
                          ),
                          Row(
                            children: [
                              Image.asset(
                                  'assets/images/product_detail_coupon.png'),
                              SizedBox(
                                width: 4,
                              ),
                              Text(
                                '상품정보',
                                style: TextStyle(
                                  color: Color(0xff2E313D),
                                  fontSize: 12,
                                ),
                              ),
                            ],
                          ),
                          SizedBox(
                            height: 12,
                          ),
                          Row(
                            children: [
                              Image.asset(
                                  'assets/images/product_detail_calender.png'),
                              SizedBox(
                                width: 4,
                              ),
                              Text(
                                '구매일로부터 30일 이내 사용 가능',
                                style: TextStyle(
                                  color: Color(0xff2E313D),
                                  fontSize: 12,
                                ),
                              ),
                            ],
                          ),
                          SizedBox(
                            height: 12,
                          ),
                          Row(
                            children: [
                              Image.asset(
                                  'assets/images/product_detail_message.png'),
                              SizedBox(
                                width: 4,
                              ),
                              Text(
                                '구매 완료 후 5-10분 내 메시지 발송',
                                style: TextStyle(
                                  color: Color(0xff2E313D),
                                  fontSize: 12,
                                ),
                              )
                            ],
                          )
                        ],
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 24,
                  ),
                  Divider(thickness: 1, height: 1, color: Color(0xffD9DDEB)),
                  SizedBox(
                    height: 24,
                  ),
                  SizedBox(
                    child: Padding(
                      padding: const EdgeInsets.only(left: 28.0, right: 28.0),
                      child: DecoratedBox(
                        decoration: BoxDecoration(),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              '상품설명',
                              style: TextStyle(
                                color: Color(0xff2E313D),
                                fontSize: 14,
                                fontWeight: FontWeight.w700,
                              ),
                            ),
                            SizedBox(
                              height: 12,
                            ),
                            Text(
                              '▶ 유의사항',
                              style: TextStyle(
                                color: Color(0xff6F7486),
                                fontSize: 12,
                              ),
                            ),
                            SizedBox(
                              height: 4,
                            ),
                            Text(
                              '- 상기 이미지는 연출된 것으로 실제와 다를 수 있습니다.',
                              style: TextStyle(
                                color: Color(0xff6F7486),
                                fontSize: 12,
                              ),
                            ),
                            SizedBox(
                              height: 4,
                            ),
                            Text(
                              '- 본 상품은 매장 재고 상황에 따라 동일 상품으로 교환이 불가능할 수 있습니다.',
                              style: TextStyle(
                                color: Color(0xff6F7486),
                                fontSize: 12,
                              ),
                            ),
                            SizedBox(
                              height: 4,
                            ),
                            Text(
                              '- 동일 상품 교환이 불가한 경우 동일 가격 이상의 다른 상품으로 교환이 가능하며, 동일 상품 외 다른 상품으로 교환할 시 차액이 발생할 수 있습니다. (차액 추가 지불) - 스타벅스 앱의 사이렌 오더를 통해서도 주문 및 결제가 가능합니다. (일부 MD제외)',
                              style: TextStyle(
                                color: Color(0xff6F7486),
                                fontSize: 12,
                              ),
                            ),
                            SizedBox(
                              height: 4,
                            ),
                            Text(
                              '- 해당 쿠폰과 스타벅스 카드의 복합결제 거래는 스타벅스 카드의 고유 혜택인 Free Extra 및 별 적립은 적용 대상이 아닌 점 이용에 참고하시기 바랍니다.',
                              style: TextStyle(
                                color: Color(0xff6F7486),
                                fontSize: 12,
                              ),
                            ),
                            SizedBox(
                              height: 4,
                            ),
                            Text(
                              '- 정식 판매처 외의 장소나 경로를 통하여 구매하거나, 기타의 방법으로 보유하신 쿠폰은 정상적인 사용 (환불, 재전송 등 포함)이 금지되거나 제한될 수 있으니 주의하시기 바랍니다.',
                              style: TextStyle(
                                color: Color(0xff6F7486),
                                fontSize: 12,
                              ),
                            ),
                            SizedBox(
                              height: 4,
                            ),
                            Text(
                              '-  해당 쿠폰을 무단으로 가공하는 등의 행위는 관계 법령에 위반될 수 있습니다.',
                              style: TextStyle(
                                color: Color(0xff6F7486),
                                fontSize: 12,
                              ),
                            ),
                            SizedBox(
                              height: 40,
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),

          // 하단 버튼고정
          SizedBox(
            width: double.infinity,
            height: 64,
            child: Padding(
              padding: const EdgeInsets.only(left: 28.0, right: 28.0),
              child: DecoratedBox(
                decoration: BoxDecoration(
                  color: Color(0xff5450D3),
                  borderRadius: BorderRadius.circular(15),
                ),
                child: TextButton(
                  child: Text(
                    '구매하기',
                    style: TextStyle(
                      color: Colors.white,
                    ),
                  ),

                  // 팝업 띄우기
                  onPressed: () {
                    showDialog(
                        context: context,
                        builder: (context) {
                          return Dialog(
                            shape: RoundedRectangleBorder(
                              borderRadius:
                                  BorderRadius.all(Radius.circular(20)),
                            ),
                            child: Padding(
                              padding: const EdgeInsets.only(
                                  left: 28.0, right: 28.0, bottom: 28, top: 32),
                              child: Column(
                                mainAxisSize: MainAxisSize.min,
                                children: [
                                  Image.asset(
                                      'assets/images/product_popupimg.png'),
                                  SizedBox(
                                    height: 16,
                                  ),

                                  Padding(
                                    padding: const EdgeInsets.only(
                                        left: 40.0, right: 40.0),
                                    child: Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.center,
                                      children: [
                                        Text(
                                          textAlign: TextAlign.center,
                                          '카페 아메리카노 T을(를) 구매하시겠어요?',
                                          style: TextStyle(
                                              fontSize: 20,
                                              fontWeight: FontWeight.bold,
                                              color: Color(0xff5450D3)),
                                        ),
                                      ],
                                    ),
                                  ),

                                  SizedBox(
                                    height: 20,
                                  ),
                                  Center(
                                    child: Container(
                                      decoration: BoxDecoration(
                                          color: Color(0xffF5F7FF),
                                          borderRadius:
                                              BorderRadius.circular(10)),
                                      child: Padding(
                                        padding: const EdgeInsets.only(
                                            left: 14.0,
                                            right: 14.0,
                                            bottom: 16,
                                            top: 16),
                                        child: Row(
                                          children: [
                                            Expanded(
                                              child: Text(
                                                '보유',
                                                style: TextStyle(
                                                  color: Color(0xff6F7486),
                                                ),
                                              ),
                                            ),
                                            Text(
                                              '1200p',
                                              style: TextStyle(
                                                fontWeight: FontWeight.bold,
                                                fontSize: 14,
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                    ),
                                  ),
                                  SizedBox(
                                    height: 16,
                                  ),
                                  Center(
                                    child: Container(
                                      decoration: BoxDecoration(
                                          color: Color(0xffF5F7FF),
                                          borderRadius:
                                              BorderRadius.circular(10)),
                                      child: Padding(
                                        padding: const EdgeInsets.only(
                                            left: 14.0,
                                            right: 14.0,
                                            bottom: 16,
                                            top: 16),
                                        child: Row(
                                          children: [
                                            Expanded(
                                              child: Text(
                                                '소유',
                                                style: TextStyle(
                                                  color: Color(0xff6F7486),
                                                ),
                                              ),
                                            ),
                                            Text(
                                              '4200p',
                                              style: TextStyle(
                                                fontWeight: FontWeight.bold,
                                                fontSize: 14,
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

                                  // 버튼들
                                  Row(
                                    children: [
                                      Expanded(
                                        child: Container(
                                          decoration: BoxDecoration(
                                              borderRadius:
                                                  BorderRadius.circular(10),
                                              border: Border.all(
                                                color: Color(0xffD9DDEB),
                                              )),
                                          child: TextButton(
                                            onPressed: () {
                                              Get.back();
                                            },
                                            child: Text(
                                              '취소',
                                              style: TextStyle(
                                                  color: Color(0xff6F7486),
                                                  fontSize: 16,
                                                  fontWeight: FontWeight.w500),
                                            ),
                                          ),
                                        ),
                                      ),
                                      SizedBox(width: 17),
                                      Expanded(
                                        child: Container(
                                          decoration: BoxDecoration(
                                            borderRadius:
                                                BorderRadius.circular(10),
                                            color: Color(0xff5450D3),
                                          ),
                                          child: TextButton(
                                            onPressed: () {},
                                            child: Text(
                                              '구매하기',
                                              style: TextStyle(
                                                  color: Colors.white,
                                                  fontSize: 16,
                                                  fontWeight: FontWeight.w500),
                                            ),
                                          ),
                                        ),
                                      ),
                                    ],
                                  )
                                ],
                              ),
                            ),
                          );
                        });
                  },
                ),
              ),
            ),
          ),
          SizedBox(
            height: 28,
          ),
        ],
      ),
    );
  }
}

// bottomNavigationBar: Material(
// color: const Color(0xffff8906),
// child: InkWell(
// onTap: () {
// //print('called on tap');
// },
// child: const SizedBox(
// height: kToolbarHeight,
// width: double.infinity,
// child: Center(
// child: Text(
// 'Bottom Button',
// style: TextStyle(
// fontWeight: FontWeight.bold,
// ),
// ),
// ),
// ),
// ),
// ),
