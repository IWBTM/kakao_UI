import 'package:flutter/material.dart';
import 'package:kakao_01/models/user.dart';
import 'package:kakao_01/screens/profile_screen.dart';

class ProfileCard extends StatelessWidget {
  const ProfileCard({Key? key, required this.user}) : super(key: key);

  final User user;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20.0),
      child: InkWell(
        onTap: () {
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) {
              return ProfileScreen(user: user);
            }),
          );
        },
        child: ListTile(
          contentPadding: const EdgeInsets.all(0),
          leading: CircleAvatar(
            radius: 20,
            backgroundImage: NetworkImage(user.backgroundImage),
          ),
          title: Text(
            user.name,
            style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
          ),
          subtitle: Text(
            user.intro,
            style: const TextStyle(fontSize: 12),
          ),
        ),
      ),
    );
  }
}
