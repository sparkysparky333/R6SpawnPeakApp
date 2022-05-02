import 'package:flutter/material.dart';

class Description extends StatefulWidget {
  final Widget child;

  const Description({Key? key, required this.child}) : super(key: key);

  @override
  _DescriptionState createState() => _DescriptionState();
}

class _DescriptionState extends State<Description> {

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.end,
      children:  [
        Padding(
          padding:
          const EdgeInsets.fromLTRB(0, 30, 20, 20),
            child: widget.child,
        )
      ],
    );
  }
}
