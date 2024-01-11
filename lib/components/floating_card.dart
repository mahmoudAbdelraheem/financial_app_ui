import 'package:flutter/material.dart';

class FloatingCard extends StatelessWidget {
  const FloatingCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Positioned(
      top: 185,
      right: 0,
      child: Container(
        padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 25),
        width: MediaQuery.of(context).size.width * 0.85,
        height: 170,
        decoration: BoxDecoration(
          color: Colors.white,
          boxShadow: [
            BoxShadow(
              color: Colors.black.withOpacity(0.2),
              blurRadius: 8,
              spreadRadius: 3,
              offset: const Offset(0, 10),
            )
          ],
          borderRadius: const BorderRadius.only(
              topLeft: Radius.circular(10), bottomLeft: Radius.circular(40)),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                const Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      children: [
                        Text(
                          'Income',
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            color: Colors.grey,
                          ),
                        ),
                        SizedBox(width: 10),
                        Icon(
                          Icons.arrow_upward_outlined,
                          color: Color(0xFF00838F),
                        ),
                      ],
                    ),
                    Text(
                      "\$2 170.90",
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        color: Colors.black87,
                        fontSize: 16,
                      ),
                    ),
                  ],
                ),
                Container(
                  width: 1,
                  height: 50,
                  color: Colors.grey,
                ),
                const Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      children: [
                        Text(
                          'Expenses',
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            color: Colors.grey,
                          ),
                        ),
                        SizedBox(width: 10),
                        Icon(
                          Icons.arrow_downward_rounded,
                          color: Colors.grey,
                        ),
                      ],
                    ),
                    Text(
                      "\$1 450.10",
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        color: Colors.black87,
                        fontSize: 16,
                      ),
                    ),
                  ],
                ),
              ],
            ),
            const SizedBox(height: 10),
            const Text(
              "You Spent \$ 1,494 this month",
              style: TextStyle(
                fontSize: 13,
                fontStyle: FontStyle.italic,
              ),
            ),
            const SizedBox(height: 5),
            const Text(
              "Let's see the cost statistics for this period",
              style: TextStyle(
                fontSize: 13,
                fontStyle: FontStyle.italic,
              ),
            ),
            const SizedBox(height: 10),
            Container(
              width: double.maxFinite,
              height: 1,
              color: Colors.grey.withOpacity(0.5),
            ),
            const SizedBox(height: 15),
            Container(
              alignment: Alignment.centerRight,
              child: const Text(
                "tell me more",
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  color: Color(0xFF00B686),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
