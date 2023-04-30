import 'package:flutter/material.dart';
import 'search_icon.dart';

class CustomAppBar extends StatelessWidget {
  const CustomAppBar({super.key, required this.eee, required this.www});
  final String eee;
  final IconData www;
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
        Container(
          height: 45,
          width: 45,
          decoration: BoxDecoration(
            color: Colors.white.withOpacity(0.2),
            borderRadius: BorderRadius.circular(16),
          ),
          child: const Center(child: CustomeSearchIcon()),
        ),
      ],
    );
  }
}
