import 'package:flutter/material.dart';

class StoreScreen extends StatelessWidget {
  static const String routeName = '/store';
  const StoreScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Store'),),
    );
  }
}
