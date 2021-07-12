import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';

class LoveScreen extends HookWidget {
  @override
  Widget build(BuildContext context) {
    useEffect(() {
      print('LoveScreen');
    }, const []);
    return Scaffold(
      appBar: AppBar(
        title: const Text('Love'),
      ),
      body: Center(
        child: Text('Love'),
      ),
    );
  }
}
