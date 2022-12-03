import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:kakao_01/components/bottom_icon_button.dart';
import 'package:kakao_01/components/round_icon_button.dart';

import '../models/user.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({Key? key, required this.user}) : super(key: key);

  final User user;

  @override
  Widget build(BuildContext context) {
    return Container(
        decoration: BoxDecoration(
          image: DecorationImage(
              image: NetworkImage(user.backgroundImage), fit: BoxFit.fitHeight),
        ),
        child: Scaffold(
          backgroundColor: Colors.transparent,
          appBar: AppBar(
            backgroundColor: Colors.transparent,
            leading: IconButton(
              icon: Icon(
                FontAwesomeIcons.times,
                color: Colors.white,
                size: 30,
              ),
              onPressed: () {
                Navigator.pop(context);
              },
            ),
            actions: [
              RoundIconButton(icon: FontAwesomeIcons.gift),
              SizedBox(
                width: 15,
              ),
              RoundIconButton(icon: FontAwesomeIcons.cog),
              SizedBox(
                width: 15,
              ),
            ],
          ),
          body: Column(
            children: [
              Spacer(),
              Container(
                width: 110,
                height: 110,
                decoration: BoxDecoration(
                  color: Colors.redAccent,
                  shape: BoxShape.circle,
                  image: DecorationImage(
                    image: NetworkImage(user.backgroundImage),
                    fit: BoxFit.cover,
                  ),
                ),
              ),
              const SizedBox(
                height: 8,
              ),
              Text(
                user.name,
                style: TextStyle(fontSize: 20, color: Colors.white),
              ),
              const SizedBox(
                height: 5,
              ),
              Text(
                user.intro,
                style: TextStyle(color: Colors.white),
                maxLines: 1,
              ),
              const SizedBox(
                height: 20,
              ),
              const Divider(
                color: Colors.white,
                indent: 30,
                endIndent: 30,
              ),
              if (user.name == me.name) _buildMyIcnos() else _buildFriendIcons()
            ],
          ),
        ));
  }

  _buildMyIcnos() {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 18.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          BottomIconButton(
            icon: FontAwesomeIcons.comment,
            text: '나와의 채팅',
          ),
          SizedBox(
            width: 50,
          ),
          BottomIconButton(
            icon: FontAwesomeIcons.pen,
            text: '프로필 편집',
          ),
        ],
      ),
    );
  }

  _buildFriendIcons() {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 18.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          BottomIconButton(
            icon: FontAwesomeIcons.comment,
            text: '1 : 1 채팅',
          ),
          SizedBox(
            width: 50,
          ),
          BottomIconButton(
            icon: FontAwesomeIcons.phone,
            text: '통화 하기',
          ),
        ],
      ),
    );
  }
}
