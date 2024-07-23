import 'package:flutter/material.dart';

class CustomSearchIcon extends StatelessWidget {
  const CustomSearchIcon({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          color: const Color(0xff3a3a3a),
          borderRadius: BorderRadius.circular(16)),
      height: 52,
      width: 52,
      child: const Center(
        child: Icon(
          Icons.search,
          color: Colors.white,
          size: 30,
        ),
      ),
    );
  }
}
