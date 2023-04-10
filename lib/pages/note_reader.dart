import 'package:flutter/material.dart';
import '../style/app_style.dart';

class NoteReaderScreen extends StatelessWidget {
  final String noteTitle;
  final String creationDate;
  final String noteContent;
  final int? colorId;

  const NoteReaderScreen({
    Key? key,
    required this.noteTitle,
    required this.creationDate,
    required this.noteContent,
    required this.colorId,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: colorId != null ? AppStyle.cardsColor[colorId!] : null,
      appBar: AppBar(
        backgroundColor: colorId != null ? AppStyle.cardsColor[colorId!] : null,
        elevation: 0.0,
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              noteTitle,
              style: AppStyle.mainTitle,
            ),
            const SizedBox(height: 4.0),
            Text(
              creationDate,
              style: AppStyle.dateTitle,
            ),
            const SizedBox(height: 28.0),
            Text(
              noteContent,
              style: AppStyle.mainContent,
              overflow: TextOverflow.ellipsis,
            ),
          ],
        ),
      ),
    );
  }
}