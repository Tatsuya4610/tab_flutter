import 'package:flutter/material.dart';

import 'next_screen2.dart';

class Screen1 extends StatelessWidget {
  const Screen1({Key? key}) : super(key: key);

  static Route<dynamic> route() {
    return MaterialPageRoute<dynamic>(
      builder: (_) => const Screen1(),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Screen1'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            TextButton(
              child: Text('次のページへ'),
              onPressed: () {
                Navigator.of(context).push<void>(
                  Screen2.route(),
                );
              },
            ),
            Text('homeタブを押すと最初に戻る')
          ],
        ),
      ),
    );
  }
}
