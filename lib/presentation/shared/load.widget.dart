import 'package:flutter/material.dart';

class LoadWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return const Center(
      child: CircularProgressIndicator(
        color: Colors.blue,
      ),
    );
  }
}
