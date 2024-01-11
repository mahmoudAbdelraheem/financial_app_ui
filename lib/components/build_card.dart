import 'package:financial_app_ui/view/transfer.dart';
import 'package:flutter/material.dart';

class BuildCard extends StatelessWidget {
  final IconData icon;
  final String title;
  final Color backgroundColor;
  final Color iconColor;
  const BuildCard({
    super.key,
    required this.icon,
    required this.title,
    required this.backgroundColor,
    required this.iconColor,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        Navigator.of(context).push(MaterialPageRoute(builder: (context) {
          return const Transfer();
        }));
      },
      child: Container(
        margin: const EdgeInsets.all(10),
        height: 90,
        width: 90,
        decoration: BoxDecoration(
          color: backgroundColor,
          borderRadius: BorderRadius.circular(10),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Icon(icon, color: iconColor),
            const SizedBox(height: 5),
            Text(
              title,
              style: const TextStyle(
                fontWeight: FontWeight.bold,
                color: Colors.black45,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
