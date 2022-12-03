import 'package:flutter/material.dart';

class TimeLine extends StatelessWidget {
  const TimeLine({Key? key, required this.time}) : super(key: key);

  final String time;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(7),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(15),
        color: Color(0xff9cafbe),
      ),
      child: Text(
        time,
        style: TextStyle(color: Colors.white),
      ),
    );
  }
}
