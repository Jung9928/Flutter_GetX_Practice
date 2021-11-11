import 'package:flutter/material.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_navigation/src/extension_navigation.dart';
import 'package:getx_practice/src/home.dart';

class SecondPage extends StatelessWidget {
  const SecondPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Second Page"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            RaisedButton(
              child: Text("뒤로 이동"),
              onPressed: () {
                // Navigator.of(context).pop(); ---> 기존 방식
                Get.back(); // getX 방식
              },
            ),
            RaisedButton(
              child: Text("홈으로 이동"),
              onPressed: () {
                // 메인 홈 라우트로 이동할 경우
                //Get.to(() => Home());   ---> to를 사용하면 라우트 히스토리가 남기 때문에 AppBar에 위치한 <-를 통해 이전 라우트로 이동이 가능해짐(보안 문제)
                Get.offAll(Home()); //--> 라우트의 히스토리를 삭제

                // 일반적인 라우트 방식1
//                Navigator.of(context).pushAndRemoveUntil(
//                    MaterialPageRoute(builder: (_) => Home()),
//                    (route) => false);
              },
            )
          ],
        ),
      ),
    );
  }
}
