import 'package:flutter/material.dart';
import 'package:notes_app/widgets/custom_appbar.dart';
import 'package:notes_app/widgets/custom_list_view.dart';

class NotesViewPage extends StatelessWidget {
  const NotesViewPage({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      backgroundColor: Color(0xff303030),
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 24),
        child: Column(
          children: [
            SizedBox(height: 35),
            CustomAppBar(),
            SizedBox(height: 30),
            Expanded(child: CardListView()),
          ],
        ),
      ),
    );
  }
}

