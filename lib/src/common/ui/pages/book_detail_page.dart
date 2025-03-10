import 'package:flutter/material.dart';

class BookDetailPage extends StatelessWidget {
  final String title;
  final String summary;

  const BookDetailPage({Key? key, required this.title, required this.summary}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(title),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: PageView(
          children: summary.split('\n\n').map((page) => Text(page)).toList(),
        ),
      ),
    );
  }
}
