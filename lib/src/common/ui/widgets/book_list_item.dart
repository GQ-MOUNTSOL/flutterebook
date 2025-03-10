import 'package:flutter/material.dart';
import 'package:flutter_ebook_app/src/common/ui/pages/book_detail_page.dart';

class BookListItem extends StatelessWidget {
  final String title;
  final String summary;

  const BookListItem({Key? key, required this.title, required this.summary}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text(title),
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => BookDetailPage(title: title, summary: summary),
          ),
        );
      },
    );
  }
}
