import 'package:flutter/material.dart';
import 'package:notes_app/widgets/buttom_sheet.dart';
import 'package:notes_app/widgets/custom_appbar.dart';
import 'package:notes_app/widgets/custom_list_view.dart';

class NotesViewPage extends StatelessWidget {
  const NotesViewPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: RawMaterialButton(
        padding: const EdgeInsets.all(18.0),
        fillColor:  const Color(0xff60eee2),
        shape: const CircleBorder(),
        onPressed: () {
        showModalBottomSheet  (
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(16)
            ),
            context: context,
            builder:(BuildContext context){
              return const AddButtomSheet();
            } ,
          );
        },
        child: const Icon(
          Icons.add,
        ),
      ),
      backgroundColor: const Color(0xff303030),
      body: const Padding(
        padding: EdgeInsets.symmetric(horizontal: 24),
        child: Column(
          children: [
            SizedBox(height: 35),
            CustomAppBar(),
            SizedBox(height: 5),
            Expanded(child: CardListView()),
          ],
        ),
      ),
    );
  }
}
