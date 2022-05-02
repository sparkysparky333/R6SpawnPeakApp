import 'package:flutter/material.dart';

class lineDivider extends StatefulWidget {
  const lineDivider({Key? key}) : super(key: key);

  @override
  _lineDividerState createState() => _lineDividerState();
}

class _lineDividerState extends State<lineDivider> {

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.all(20.0),
      child: Divider(
        thickness: 5,
        // thickness of the line
        indent: 10,
        // empty space to the leading edge of divider.
        endIndent: 10,
        // empty space to the trailing edge of the divider.
        color: Colors.white,
        // The color to use when painting the line.
        height: 20, // The divider's height extent.
      ),
    );
  }
}
