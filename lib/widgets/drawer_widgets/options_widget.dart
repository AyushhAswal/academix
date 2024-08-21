import 'package:flutter/material.dart';

class OptionsWidget extends StatefulWidget {
  final String text;
  final Icon icon;
  const OptionsWidget({super.key,required this .text,required this.icon});

  @override
  State<OptionsWidget> createState() => _OptionsWidgetState();
}

class _OptionsWidgetState extends State<OptionsWidget> {
  @override
  Widget build(BuildContext context) {
    return  Container(
      child: Column(
        children: [CircleAvatar(radius: 45,child: widget.icon,backgroundColor: Colors.white, ),
        Text(widget.text ,style: TextStyle(color: Colors.white),)],
      ),
    );
  }
}
