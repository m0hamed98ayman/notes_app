import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:notes_app/views/edit_note_page.dart';

class CustomCard extends StatelessWidget {
  const CustomCard({super.key});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
       onTap:(){
        Navigator.push(context, MaterialPageRoute(builder: (context) {
          return const EditNotePage();
        },));
       } ,
      child: Container(
        padding: const EdgeInsets.only(left: 16, top: 16,bottom: 16),
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(16),
            color: const Color.fromARGB(255, 250, 217, 69)),
        child: Column(
          children: [
            ListTile(
              title: const Text(
                'Flutter tips',
                style: TextStyle(
                  fontSize: 30,
                ),
              ),
              subtitle: Padding(
                padding: const EdgeInsets.only( top: 16.0),
                child: Text(
                  'Build Your Career With Mohamed Ayman',
                  style: TextStyle(
                    color: Colors.black.withOpacity(0.55),
                    fontSize: 18
                  ),
                ),
              ),
              trailing: IconButton(
                onPressed: () {},
                icon: const Icon(
                  FontAwesomeIcons.trash,
                  color: Colors.black,
                ),
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Padding(
                  padding: const EdgeInsets.only(right: 20.0),
                  child: Text(
                    'Jul 24 , 2024',
                    style: TextStyle(
                      color: Colors.black.withOpacity(0.55),
                    ),
                  ),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
