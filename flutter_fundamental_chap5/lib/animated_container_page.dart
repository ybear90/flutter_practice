import 'dart:math';

import 'package:flutter/material.dart';

class AnimatedContainerPage extends StatefulWidget {
  @override
  _AnimatedContainerPageState createState() => _AnimatedContainerPageState();
}

class _AnimatedContainerPageState extends State<AnimatedContainerPage> {
  // 초기에 100.0 값을 가지는 _size 변수는 사진을 클릭할 때 마다
  // random 하게 100.0 ~ 299.0 사이의 값이 됩니다.
  var _size = 100.0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('AnimatedContainer'),
      ),
      body: Center(
        child: GestureDetector(
          onTap: () {
            final random = Random(); // Random 클래스 사용 준비
            setState(() {
              // 클릭할 때 마다 100.0 ~ 299.0 사이의 실수를 랜덤하게 얻기
              _size = random.nextInt(200).toDouble() + 100;
            });
          },
          child: AnimatedContainer(
            duration: Duration(seconds: 1),
            width: _size,
            height: _size,
            child: Image.asset('assets/sample.jpg'),
            curve: Curves.fastOutSlowIn,
          ),
        ),
      ),
    );
  }
}
