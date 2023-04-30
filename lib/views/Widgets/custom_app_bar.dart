import 'package:flutter/material.dart';
import 'search_icon.dart';

class CustomAppBar extends StatelessWidget {
  const CustomAppBar({super.key, required this.eee, required this.icon});
  final String eee;
  final IconData icon;
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Text(
          eee,
          style: TextStyle(
              fontSize: 28, color: Colors.white, fontWeight: FontWeight.bold),
        ),
        Spacer(),
        CustomeSearchIcon(
          icon: icon,
        ),
      ],
    );
  }
}
