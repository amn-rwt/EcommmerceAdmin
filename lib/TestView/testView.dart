import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:nil/nil.dart';

class TestView extends StatelessWidget {
  const TestView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Material(
      child: Column(
        children: [
          Text('ksdfkf'),
          Text('123'),
          Text('2'),
          Text('3'),
          Text('4'),
          Expanded(child: Nil()),
          Text('5')
        ],
      ),
    );
  }
}
