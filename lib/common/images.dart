import 'package:flutter/material.dart';

class Images extends StatefulWidget {
  final Widget child;

  const Images({Key? key, required this.child}) : super(key: key);

  @override
  _ImagesState createState() => _ImagesState();
}

class _ImagesState extends State<Images> {

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.end,
      children: [
        Container(
          padding: const EdgeInsets.all(10),
          // Border width
          decoration: const BoxDecoration(
              color: Colors.black,
              shape: BoxShape.rectangle),
          child: ClipRRect(
            //borderRadius: BorderRadius.circular(16.0),
            child: widget.child,
          ),
        ),
      ],
    );
  }
}
