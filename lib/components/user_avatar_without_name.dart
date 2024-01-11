import 'package:flutter/material.dart';

class UserAvatarWithoutName extends StatelessWidget {
  final String url;
  const UserAvatarWithoutName({
    super.key,
    required this.url,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(right: 25),
      child: CircleAvatar(
        radius: 30,
        backgroundImage: NetworkImage(url),
      ),
    );
  }
}
