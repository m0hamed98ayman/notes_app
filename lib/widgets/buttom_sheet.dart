import 'package:flutter/material.dart';
import 'package:notes_app/widgets/custom_button.dart';
import 'package:notes_app/widgets/custom_text_field.dart';

class AddButtomSheet extends StatelessWidget {
  const AddButtomSheet({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
        color: const Color(0xff303030),
        child: const Padding(
          padding: EdgeInsets.symmetric(horizontal: 16.0),
          child: Column(
            children: [
              SizedBox(
                height: 32,
              ),
              CustomTextField(
                hintText: 'title',
              ),
              SizedBox(height: 15),
              CustomTextField(
                hintText: 'title',
                maxLines: 5,
              ),
              SizedBox(height: 70),
              CustomButton()
            ],
          ),
        ));
  }
}
