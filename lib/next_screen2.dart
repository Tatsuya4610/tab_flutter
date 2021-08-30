import 'package:flutter/material.dart';

class Screen2 extends StatelessWidget {
  const Screen2({Key? key}) : super(key: key);

  static Route<dynamic> route() {
    return MaterialPageRoute<dynamic>(
      builder: (_) => const Screen2(),
    );
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Screen２'),),
      body: Center(
        child: TextButton(
          child: Text('次のページへ'),
          onPressed: () {
            Navigator.of(context).push<void>(
              Screen2.route(),
            );
          },
        ),
      ),
    );
  }
}
