/*
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:webview_flutter/webview_flutter.dart';

class HomeScreen extends StatelessWidget {
  WebViewController? controller1;
  WebViewController? controller2;
  //final homeUrl =
  //    'https://free.ybmclass.com/free/toeic/toeic_5min_view.asp?wdate=2023-02-02&page=1';
  //    final homeUrl = "http://modamtech.com/modam.html";
  final homeUrl =
      'https://free.ybmclass.com/free/toeic/toeic_5min_view.asp?wdate=2022-10-25&page=3';

  HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0, // 그림자 없애기
        title: Text('MODAM ENGLISH'),
        centerTitle: true,
        backgroundColor: Colors.orange,
        actions: [
          IconButton(
            onPressed: () {
              if (controller1 == null || controller2 == null) {
                return;
              }
              controller1!.loadUrl(homeUrl);
              controller2!.loadUrl(homeUrl);
            },
            icon: Icon(
              Icons.home,
            ),
          ),
        ],
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              Container(
                width: double.infinity,
                height: 100,
                child: WebView(
                  onWebViewCreated: (WebViewController controller) {
                    controller.clearCache();
                    this.controller1 = controller;
                  },
                  initialUrl: homeUrl,
                  javascriptMode: JavascriptMode.unrestricted,
                ),
              ),
              Container(
                width: double.infinity,
                height: 1800,
                child: WebView(
                  onWebViewCreated: (WebViewController controller) {
                    controller.clearCache();
                    this.controller2 = controller;
                  },
                  initialUrl: homeUrl,
                  javascriptMode: JavascriptMode.unrestricted,
                ),
              ),
            ],
          ),
        ),
      ), // This trailing comma makes auto-formatting nicer for build methods.
      /// AppBar 왼쪽에 아이콘을 누를 때 왼쪽에서 오른쪽으로 나오는 위젯
      /// 해당 위젯을 추가하면 AppBar 왼쪽에 아이콘이 자동으로 추가됨
      drawer: Drawer(
        child: Column(
          children: [
            // Drawer 윗 부분
            DrawerHeader(
              margin: const EdgeInsets.all(0),
              decoration: BoxDecoration(
                color: Colors.amber,
              ),
              child: SizedBox(
                width: double.infinity, // 가득 채우기
                child: Column(
                  children: [
                    /// 동그란 배경
                    CircleAvatar(
                      radius: 36,
                      backgroundColor: Colors.white,
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),

                        /// 이미지
                        child: Image.network(
                          "https://i.ibb.co/CwzHq4z/trans-logo-512.png",
                          width: 62,
                        ),
                      ),
                    ),

                    /// 닉네임 상단 여백
                    SizedBox(height: 16),

                    /// 닉네임
                    Text(
                      "닉네임",
                      style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                      ),
                    ),

                    /// 이메일
                    Text(
                      "hello@world.com",
                      style: TextStyle(
                        fontSize: 16,
                        color: Colors.black,
                      ),
                    ),
                  ],
                ),
              ),
            ),

            /// 이벤트 배너
            // 특정 비율로 위젯을 보여주기
            AspectRatio(
              aspectRatio: 12 / 4, // 가로 : 세로 = 12 : 4 (이미지를 12:4로 준비했어요)
              /// 이벤트 배너 리스트
              /// 스크롤을 하는데, 특정 항목이 스냅이 걸리도록 만들고 싶은 경우 PageView를 사용해요.
              child: PageView(
                children: [
                  Image.network("https://i.ibb.co/0mXKmZq/banner-1.jpg"),
                  Image.network("https://i.ibb.co/DDgYrJR/banner-2.jpg"),
                  Image.network("https://i.ibb.co/v1RMHN4/banner-3.jpg"),
                  Image.network("https://i.ibb.co/NmNsrr2/banner-4.jpg"),
                ],
              ),
            ),

            /// 구매 내역
            ListTile(
              title: Text(
                '구매내역',
                style: TextStyle(fontSize: 18),
              ),
              trailing: Icon(
                Icons.arrow_forward_ios,
                color: Colors.black,
              ),
              onTap: () {
                // 클릭시 drawer 닫기
                Navigator.pop(context);
              },
            ),

            /// 레시피 공유하기
            ListTile(
              title: Text(
                '저장한 레시피',
                style: TextStyle(fontSize: 18),
              ),
              trailing: Icon(
                Icons.arrow_forward_ios,
                color: Colors.black,
              ),
              onTap: () {
                // 클릭시 drawer 닫기
                Navigator.pop(context);
              },
            ),
          ],
        ),
      ),
    );
  }
}
*/