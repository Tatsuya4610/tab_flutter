import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';

import '../next_screen1.dart';

class HomeScreen extends HookWidget {
  @override
  Widget build(BuildContext context) {
    useEffect(() {
      print('HomeScreen');
    }, const []);
    return Scaffold(
      appBar: AppBar(
        title: const Text('Home'),
        backgroundColor: Colors.blue,
      ),
      body: Center(
        child: TextButton(
          child: Text('次のページへ'),
          onPressed: () {
            Navigator.of(context).push<void>(
              Screen1.route(),
            );
          },
        ),
      ),
    );
  }
}
