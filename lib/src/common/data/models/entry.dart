import 'package:flutter_ebook_app/src/common/common.dart';

class Entry {
  final Id title;
  final Id summary;
  final Id urduSummary; // Add this line

  Entry({
    required this.title,
    required this.summary,
    required this.urduSummary, // Add this line
  });
}