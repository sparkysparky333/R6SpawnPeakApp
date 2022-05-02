import 'package:flutter/material.dart';

class Spawn extends StatefulWidget {
  final Widget child;

  const Spawn({Key? key, required this.child}) : super(key: key);

  @override
  _SpawnState createState() => _SpawnState();
}

class _SpawnState extends State<Spawn> {

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.end,
      children: [
        Padding(
          padding:
          const EdgeInsets.fromLTRB(20, 20, 10, 0),
          child: widget.child,
        )
      ],
    );
  }
}
