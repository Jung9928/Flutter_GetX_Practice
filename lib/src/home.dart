import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_practice/src/pages/normal/first.dart';

class Home extends StatelessWidget {
  const Home({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("라우트 관리 홈"),
        ),
        body: Center(
            child:
                Column(mainAxisAlignment: MainAxisAlignment.center, children: [
          RaisedButton(
            child: Text("일반적인 라우트"),
            onPressed: () {
              // 기존 방식
//              Navigator.of(context).push(MaterialPageRoute(
//                builder: (_) => FirstPage(),
//              ));
              // getX 방식
              Get.to(() => FirstPage());
            },
          )
        ])));
  }
}
