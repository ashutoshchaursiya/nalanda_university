import 'package:flutter/material.dart';

class TextInputCard extends StatelessWidget {
  final Widget child;
  const TextInputCard({
    Key? key,
    required this.child,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 55,
      child: Card(
        elevation: 8,
        // color: Colors.purple,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(25)),
        child: child,
      ),
    );
  }
}
