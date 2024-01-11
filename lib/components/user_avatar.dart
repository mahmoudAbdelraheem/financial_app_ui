import 'package:flutter/material.dart';

class UserAvatar extends StatelessWidget {
  final String name;
  final String url;
  const UserAvatar({
    super.key,
    required this.name,
    required this.url,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(right: 25),
      child: Column(
        children: [
          CircleAvatar(
            radius: 34,
            backgroundColor: const Color(0xFF00B686),
            child: CircleAvatar(
              radius: 32,
              backgroundColor: Colors.white,
              child: CircleAvatar(
                radius: 30,
                backgroundImage: NetworkImage(url),
              ),
            ),
          ),
          const SizedBox(height: 5),
          Text(
            name,
            style: const TextStyle(
              color: Colors.grey,
              fontSize: 12,
              fontWeight: FontWeight.bold,
            ),
          ),
        ],
      ),
    );
  }
}
