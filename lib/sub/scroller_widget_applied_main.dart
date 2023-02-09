/*
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:webview_flutter/webview_flutter.dart';

class HomeScreen extends StatelessWidget {
  WebViewController? controller;
  //final homeUrl =
  //    'https://free.ybmclass.com/free/toeic/toeic_5min_view.asp?wdate=2023-02-02&page=1';
  //    final homeUrl = "http://modamtech.com/modam.html";
  final homeUrl =
      'https://free.ybmclass.com/free/toeic/toeic_5min_view.asp?wdate=2022-10-25&page=3';

  HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      /*
      appBar: AppBar(
        backgroundColor: Colors.orange,
        title: Text('Hi Yo'),
        centerTitle: true,
        actions: [
          IconButton(
            onPressed: () {
              if (controller == null) {
                return;
              }
              controller!.loadUrl(homeUrl);
            },
            icon: Icon(
              Icons.home,
            ),
          ),
        ],
      ),
      */
      appBar: AppBar(
        title: Text('MODAM ENGLISH'),
        centerTitle: true,
        backgroundColor: Colors.orange,
        actions: [
          IconButton(
            onPressed: () {
              if (controller == null) {
                return;
              }
              controller!.loadUrl(homeUrl);
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
              Text("11233344"),
              Text("11233344"),
              Text("11233344"),
              Text("11233344"),
              Text("11233344"),
              Text("11233344"),
              Text("11233344"),
              Text("11233344"),
              Text("11233344"),
              Text("11233344"),
              Text("11233344"),
              Text("11233344"),
              Text("11233344"),
              Text("11233344"),
              Text("11233344"),
              Text("11233344"),
              Text("11233344"),
              Text("11233344"),
              Container(
                width: double.infinity,
                height: 500,
                child: WebView(
                  onWebViewCreated: (WebViewController controller) {
                    controller.clearCache();
                    this.controller = controller;
                  },
                  initialUrl: homeUrl,
                  javascriptMode: JavascriptMode.unrestricted,
                ),
              ),
            ],
          ),
        ),
      ), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}
*/