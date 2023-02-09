// ignore_for_file: prefer_const_constructors

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:webview_flutter/webview_flutter.dart';

class HomeScreen extends StatefulWidget {
  HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  WebViewController? controller;

  //final homeUrl =
  final homeUrl =
      'https://free.ybmclass.com/free/toeic/toeic_5min_view.asp?wdate=2022-10-25&page=3';

  String? _test1 = "A";
  String? _test2 = "A";
  String? _test3 = "A";

  @override
  Widget build(BuildContext context) {
    Color getColor(Set<MaterialState> states) {
      const Set<MaterialState> interactiveStates = <MaterialState>{
        MaterialState.pressed,
        MaterialState.hovered,
        MaterialState.focused,
      };
      if (states.any(interactiveStates.contains)) {
        return Colors.blue;
      }
      return Colors.red;
    }

    return Scaffold(
      appBar: AppBar(
        elevation: 0, // 그림자 없애기
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
              Container(
                width: double.infinity,
                height: 1800,
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
      drawer: Drawer(
        child: SafeArea(
          child: createDrawer(),
        ),
      ),
    );
  }

  Column createDrawer() {
    return Column(
      children: [
        Text(
          'Test 1.                                                ',
          textAlign: TextAlign.left,
          style: TextStyle(fontSize: 19),
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Expanded(
              child: ListTile(
                contentPadding: EdgeInsets.all(0),
                horizontalTitleGap: 1,
                minLeadingWidth: 0,
                title: const Text(
                  'A',
                  style: TextStyle(fontSize: 19),
                ),
                leading: Radio<String>(
                  value: "A",
                  groupValue: _test1,
                  onChanged: (String? value) {
                    setState(() {
                      _test1 = value;
                    });
                  },
                ),
              ),
            ),
            Expanded(
              child: ListTile(
                contentPadding: EdgeInsets.all(0),
                horizontalTitleGap: 1,
                minLeadingWidth: 0,
                title: const Text(
                  'B',
                  style: TextStyle(fontSize: 19),
                ),
                leading: Radio<String>(
                  value: "B",
                  groupValue: _test1,
                  onChanged: (String? value) {
                    setState(() {
                      _test1 = value;
                    });
                  },
                ),
              ),
            ),
            Expanded(
              child: ListTile(
                contentPadding: EdgeInsets.all(0),
                horizontalTitleGap: 1,
                minLeadingWidth: 0,
                title: const Text(
                  'C',
                  style: TextStyle(fontSize: 19),
                ),
                leading: Radio<String>(
                  value: "C",
                  groupValue: _test1,
                  onChanged: (String? value) {
                    setState(() {
                      _test1 = value;
                    });
                  },
                ),
              ),
            ),
            Expanded(
              child: ListTile(
                contentPadding: EdgeInsets.all(0),
                horizontalTitleGap: 1,
                minLeadingWidth: 0,
                title: const Text(
                  'D',
                  style: TextStyle(fontSize: 19),
                ),
                leading: Radio<String>(
                  value: "D",
                  groupValue: _test1,
                  onChanged: (String? value) {
                    setState(() {
                      _test1 = value;
                    });
                  },
                ),
              ),
            ),
          ],
        ),
        Text(
          'Test 2.                                                ',
          textAlign: TextAlign.left,
          style: TextStyle(fontSize: 19),
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Expanded(
              child: ListTile(
                contentPadding: EdgeInsets.all(0),
                horizontalTitleGap: 1,
                minLeadingWidth: 0,
                title: const Text(
                  'A',
                  style: TextStyle(fontSize: 19),
                ),
                leading: Radio<String>(
                  value: "A",
                  groupValue: _test2,
                  onChanged: (String? value) {
                    setState(() {
                      _test2 = value;
                    });
                  },
                ),
              ),
            ),
            Expanded(
              child: ListTile(
                contentPadding: EdgeInsets.all(0),
                horizontalTitleGap: 1,
                minLeadingWidth: 0,
                title: const Text(
                  'B',
                  style: TextStyle(fontSize: 19),
                ),
                leading: Radio<String>(
                  value: "B",
                  groupValue: _test2,
                  onChanged: (String? value) {
                    setState(() {
                      _test2 = value;
                    });
                  },
                ),
              ),
            ),
            Expanded(
              child: ListTile(
                contentPadding: EdgeInsets.all(0),
                horizontalTitleGap: 1,
                minLeadingWidth: 0,
                title: const Text(
                  'C',
                  style: TextStyle(fontSize: 19),
                ),
                leading: Radio<String>(
                  value: "C",
                  groupValue: _test2,
                  onChanged: (String? value) {
                    setState(() {
                      _test2 = value;
                    });
                  },
                ),
              ),
            ),
            Expanded(
              child: ListTile(
                contentPadding: EdgeInsets.all(0),
                horizontalTitleGap: 1,
                minLeadingWidth: 0,
                title: const Text(
                  'D',
                  style: TextStyle(fontSize: 19),
                ),
                leading: Radio<String>(
                  value: "D",
                  groupValue: _test2,
                  onChanged: (String? value) {
                    setState(() {
                      _test2 = value;
                    });
                  },
                ),
              ),
            ),
          ],
        ),
        // ignore: prefer_const_constructors
        Text(
          "Test 3.                                                ",
          textAlign: TextAlign.left,
          // ignore: prefer_const_constructors
          style: TextStyle(fontSize: 19),
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Expanded(
              child: ListTile(
                contentPadding: EdgeInsets.all(0),
                horizontalTitleGap: 1,
                minLeadingWidth: 0,
                title: const Text(
                  'A',
                  style: TextStyle(fontSize: 19),
                ),
                leading: Radio<String>(
                  value: "A",
                  groupValue: _test3,
                  onChanged: (String? value) {
                    setState(() {
                      _test3 = value;
                    });
                  },
                ),
              ),
            ),
            Expanded(
              child: ListTile(
                contentPadding: EdgeInsets.all(0),
                horizontalTitleGap: 1,
                minLeadingWidth: 0,
                title: const Text(
                  'B',
                  style: TextStyle(fontSize: 19),
                ),
                leading: Radio<String>(
                  value: "B",
                  groupValue: _test3,
                  onChanged: (String? value) {
                    setState(() {
                      _test3 = value;
                    });
                  },
                ),
              ),
            ),
            Expanded(
              child: ListTile(
                contentPadding: EdgeInsets.all(0),
                horizontalTitleGap: 1,
                minLeadingWidth: 0,
                title: const Text(
                  'C',
                  style: TextStyle(fontSize: 19),
                ),
                leading: Radio<String>(
                  value: "C",
                  groupValue: _test3,
                  onChanged: (String? value) {
                    setState(() {
                      _test3 = value;
                    });
                  },
                ),
              ),
            ),
            Expanded(
              child: ListTile(
                contentPadding: EdgeInsets.all(0),
                horizontalTitleGap: 1,
                minLeadingWidth: 0,
                title: const Text(
                  'D',
                  style: TextStyle(fontSize: 19),
                ),
                leading: Radio<String>(
                  value: "D",
                  groupValue: _test3,
                  onChanged: (String? value) {
                    setState(() {
                      _test3 = value;
                    });
                  },
                ),
              ),
            ),
          ],
        ),
      ],
    );
  }
}
