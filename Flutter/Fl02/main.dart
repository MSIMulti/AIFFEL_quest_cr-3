import 'package:flutter/material.dart';

// 앱의 시작점, MyApp 위젯을 루트로 실행함
void main() {
  runApp(const MyApp()); // Flutter 앱 실행
}

// MyApp 클래스는 앱의 UI를 정의하는 클래스, StatelessWidget 사용
class MyApp extends StatelessWidget {
  // MyApp의 생성자
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // 앱 화면을 구성하는 build 메서드
    return MaterialApp(
      home: Scaffold(
        // 상단의 AppBar 추가
        appBar: AppBar(
          title: Text('플러터 앱 만들기'),
          backgroundColor: Colors.blue,
          leading: Image.asset('images/house.png'), // 왼쪽 상단에 이미지 아이콘 추가
        ),
        // 본문 영역
        body: Column(
          children: [
            Spacer(flex: 4), // 위쪽에 공간을 적당히 확보하여 예시처럼 살짝 아래쪽으로 내림
            // 직사각형 모양의 ElevatedButton 추가
            Center(
              child: SizedBox( // 버튼 크기 정의
                width: 200, 
                height: 60, 
                child: ElevatedButton( //버튼 생성
                  onPressed: () {
                    print('버튼이 눌렸습니다');
                  },
                  // 직사각형 모양을 만들기 위한 ButtonStyle 추가
                  style: ElevatedButton.styleFrom(
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.zero, // 모서리를 둥글지 않게 설정
                    ),
                  ),
                  child: Text('Text'),
                ),
              ),
            ),
            SizedBox(height: 90), // 버튼과 정사각형들 사이 간격 추가
            // Stack으로 겹친 정사각형들 배치
            Center(
              child: SizedBox(  //스택 크기 정의
                width: 300, 
                height: 300,
                child: Stack(
                  children: [
                    Positioned(
                      top: 0,
                      left: 0,
                      child: Container(
                        width: 300, // 첫 번째 컨테이너 크기(스택 포지션에선 자식 위젯 알아서 부모위젯에서 안삐져나가게 해줌)
                        height: 300,
                        color: Colors.red,
                      ),
                    ),
                    Positioned(
                      top: 0,
                      left: 0,
                      child: Container(
                        width: 240, // 두 번째 컨테이너 크기
                        height: 240,
                        color: Colors.orange,
                      ),
                    ),
                    Positioned(
                      top: 0,
                      left: 0,
                      child: Container(
                        width: 180, // 세 번째 컨테이너 크기
                        height: 180,
                        color: Colors.yellow,
                      ),
                    ),
                    Positioned(
                      top: 0,
                      left: 0,
                      child: Container(
                        width: 120, // 네 번째 컨테이너 크기
                        height: 120,
                        color: Colors.green,
                      ),
                    ),
                    Positioned(
                      top: 0,
                      left: 0,
                      child: Container(
                        width: 60, // 다섯 번째 컨테이너 크기
                        height: 60,
                        color: Colors.blue,
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Spacer(flex: 6), // 하단에 더 많은 공간 확보
          ],
        ),
      ),
    );
  }
}
//회고: 원하는 모양대로 만드는게 쉽지 않다.
