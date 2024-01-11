import 'package:flutter/material.dart';

class BottonNavBarIcons extends StatefulWidget {
  final IconData icon;
  final int index;
  const BottonNavBarIcons({
    super.key,
    required this.icon,
    required this.index,
  });

  @override
  State<BottonNavBarIcons> createState() => _BottonNavBarIconsState();
}

class _BottonNavBarIconsState extends State<BottonNavBarIcons> {
  int _selectedIndex = 0;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        setState(() {
          _selectedIndex = widget.index;
          print("selected item == $_selectedIndex");
          print("index    item == ${widget.index} ");
        });
      },
      child: Container(
        height: 60,
        width: MediaQuery.of(context).size.width / 5,
        decoration: widget.index == _selectedIndex
            ? const BoxDecoration(
                border: Border(
                  bottom: BorderSide(
                    width: 4,
                    color: Colors.green,
                  ),
                ),
              )
            : const BoxDecoration(),
        child: Icon(widget.icon),
      ),
    );
  }
}
