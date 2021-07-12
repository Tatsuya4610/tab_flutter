import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';

class HomeScreen extends HookWidget {
  @override
  Widget build(BuildContext context) {
    useEffect(() {
      print('HomeScreen');
    }, const []);
    return Scaffold(
      appBar: AppBar(
        title: const Text('Home'),
      ),
      body: Center(
        child: Text('Home'),
      ),
    );
  }
}
