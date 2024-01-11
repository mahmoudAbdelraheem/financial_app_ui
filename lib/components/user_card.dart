import 'package:financial_app_ui/components/user_avatar_without_name.dart';
import 'package:flutter/material.dart';

class UserCard extends StatelessWidget {
  final String url;
  final String name;
  final String phone;
  const UserCard({
    super.key,
    required this.url,
    required this.name,
    required this.phone,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 30),
      child: Column(
        children: <Widget>[
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              Row(
                children: <Widget>[
                  UserAvatarWithoutName(url: url),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Text(
                        name,
                        style: const TextStyle(
                          fontSize: 14,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      const SizedBox(height: 8),
                      Row(
                        children: <Widget>[
                          const Icon(
                            Icons.phone,
                            color: Colors.grey,
                            size: 16,
                          ),
                          const SizedBox(width: 8),
                          Text(
                            phone,
                            style: const TextStyle(
                              fontSize: 12,
                              fontWeight: FontWeight.bold,
                              color: Colors.grey,
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ],
              ),
              Container(
                height: 40,
                width: 40,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: Colors.green.withOpacity(0.2),
                ),
                child: const Icon(
                  Icons.arrow_forward_ios_rounded,
                  size: 25,
                  color: Color(0xFF00B686),
                ),
              ),
            ],
          ),
          Divider(
            color: Colors.grey[300],
          ),
        ],
      ),
    );
  }
}
