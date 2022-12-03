import 'package:flutter/material.dart';
import 'package:kakao_01/models/user.dart';

class OtherChat extends StatelessWidget {
  const OtherChat(
      {Key? key, required this.name, required this.text, required this.time})
      : super(key: key);

  final String name;
  final String text;
  final String time;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 10.0),
      child: Row(
        children: [
          CircleAvatar(
            backgroundImage: NetworkImage(friends[0].backgroundImage!),
          ),
          SizedBox(
            width: 10,
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(name),
              SizedBox(
                height: 3,
              ),
              Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(15),
                  color: Colors.white,
                ),
                padding: EdgeInsets.symmetric(horizontal: 6, vertical: 8),
                child: Text(
                  text,
                  style: TextStyle(color: Colors.black),
                ),
              )
            ],
          ),
          SizedBox(
            width: 8,
          ),
          Text(
            time,
            style: TextStyle(
              fontSize: 12,
              color: Colors.black,
            ),
          )
        ],
      ),
    );
  }
}
