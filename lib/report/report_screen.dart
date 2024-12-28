import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';

class ReportScreen extends HookWidget {
  @override
  Widget build(BuildContext context) {
    useEffect(() {
      print('ReportScreen');
    }, const []);

    return Scaffold(
      appBar: AppBar(
        title: const Text('Report'),
        backgroundColor: Colors.blue,
      ),
      body: Center(
        child: Text('Report'),
      ),
    );
  }
}
