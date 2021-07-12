import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';

class SettingScreen extends HookWidget {
  @override
  Widget build(BuildContext context) {
    useEffect(() {
      print('Setting');
    }, const []);
    return Scaffold(
      appBar: AppBar(
        title: const Text('Setting'),
      ),
      body: Center(
        child: Text('Setting'),
      ),
    );
  }
}
