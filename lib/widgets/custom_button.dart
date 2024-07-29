import 'package:flutter/material.dart';

class CustomButton extends StatelessWidget {
  const CustomButton({super.key,this.onTap});
final void Function()? onTap;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        width: MediaQuery.of(context).size.width,
        height: 55,
        decoration: BoxDecoration(
          color: const Color(0xff60eee2),
          borderRadius: BorderRadius.circular(16),
        ),
        child: const Center(
          child: Text(
            "Add",
            style: TextStyle(color: Color.fromARGB(255, 3, 0, 45), fontSize: 20),
          ),
        ),
      ),
    );
  }
}
