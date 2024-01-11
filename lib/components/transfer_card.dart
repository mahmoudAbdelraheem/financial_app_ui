import 'package:flutter/material.dart';

class TransferCard extends StatelessWidget {
  final bool isActive;
  final IconData icon;
  final String title;
  const TransferCard({
    super.key,
    required this.icon,
    required this.title,
    required this.isActive,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 70,
      width: 70,
      decoration: BoxDecoration(
        color: isActive ? Colors.white : Colors.black.withOpacity(0.1),
        borderRadius: BorderRadius.circular(10),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Icon(
            icon,
            color: isActive ? const Color(0xFF00B686) : Colors.white,
          ),
          const SizedBox(height: 5),
          Text(
            title,
            style: TextStyle(
                color: isActive ? const Color(0xFF00B686) : Colors.white),
          ),
        ],
      ),
    );
  }
}
