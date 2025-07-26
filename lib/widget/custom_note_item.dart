import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:notes_app/views/edit_note_view.dart';

class CustomNoteItem extends StatelessWidget {
  const CustomNoteItem({super.key});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) {
              return const EditNoteView();
            },
          ),
        );
      },
      child: Container(
        padding: EdgeInsets.only(top: 24, bottom: 24, left: 16),
        decoration: BoxDecoration(
          color: Color(0xffffcf7f),
          borderRadius: BorderRadius.circular(16),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            ListTile(
              title: Text(
                'Flutter Tips',
                style: TextStyle(fontSize: 26, color: Colors.black),
              ),

              subtitle: Padding(
                padding: const EdgeInsets.only(top: 16.0, bottom: 16),
                child: Text(
                  'Learn how to build beautiful apps with Flutter.',
                  style: TextStyle(fontSize: 20, color: Colors.black54),
                ),
              ),
              trailing: IconButton(
                onPressed: () {},
                icon: Icon(
                  FontAwesomeIcons.trash,
                  color: Colors.black,
                  size: 24,
                ),
              ),
            ),

            Padding(
              padding: const EdgeInsets.only(right: 24),
              child: Text(
                'May25,2025',
                style: TextStyle(fontSize: 16, color: Colors.black54),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
