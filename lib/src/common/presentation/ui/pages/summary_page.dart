import 'package:auto_route/auto_route.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_ebook_app/src/common/common.dart';
import 'package:flutter_ebook_app/src/features/features.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:uuid/uuid.dart';

class BookListItem extends ConsumerWidget {
  final Entry entry;

  BookListItem({
    super.key,
    required this.entry,
  });

  static const uuid = Uuid();

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final String imgTag = uuid.v4();
    final String titleTag = uuid.v4();
    final String authorTag = uuid.v4();

    return InkWell(
      onTap: () {
        final bool isHomeTab = ref.read(currentTabNotifierProvider).isHomeTab;
        final route = BookDetailsRoute(
          entry: entry,
          imgTag: imgTag,
          titleTag: titleTag,
          authorTag: authorTag,
        );
        if (context.isLargeScreen && isHomeTab) {
          context.router.replace(route);
        } else {
          context.router.push(route);
        }
      },
      child: SizedBox(
        height: 150.0,
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Card(
              shape: const RoundedRectangleBorder(
                borderRadius: BorderRadius.all(Radius.circular(10.0)),
              ),
              elevation: 4,
              child: ClipRRect(
                borderRadius: const BorderRadius.all(Radius.circular(10.0)),
                child: Hero(
                  tag: imgTag,
                  child: CachedNetworkImage(
                    imageUrl: entry.link![1].href!,
                    placeholder: (context, url) => const SizedBox(
                      height: 150.0,
                      width: 100.0,
                      child: LoadingWidget(
                        isImage: true,
                      ),
                    ),
                    errorWidget: (context, url, error) => Image.asset(
                      'assets/images/place.png',
                      fit: BoxFit.cover,
                      height: 150.0,
                      width: 100.0,
                    ),
                    fit: BoxFit.cover,
                    height: 150.0,
                    width: 100.0,
                  ),
                ),
              ),
            ),
            const SizedBox(width: 10.0),
            Flexible(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Hero(
                    tag: titleTag,
                    child: Material(
                      type: MaterialType.transparency,
                      child: Text(
                        entry.title!.t!.replaceAll(r'\', ''),
                        style: TextStyle(
                          fontSize: 17.0,
                          fontWeight: FontWeight.bold,
                          color: context.theme.textTheme.titleLarge!.color,
                        ),
                        maxLines: 2,
                        overflow: TextOverflow.ellipsis,
                      ),
                    ),
                  ),
                  const SizedBox(height: 5),
                  Hero(
                    tag: authorTag,
                    child: Material(
                      type: MaterialType.transparency,
                      child: Text(
                        entry.author!.name!.t!,
                        style: TextStyle(
                          fontSize: 14.0,
                          fontWeight: FontWeight.w800,
                          color: context.theme.colorScheme.secondary,
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(height: 10.0),
                  GestureDetector(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => SummaryPage(summary: entry.summary!.t!),
                        ),
                      );
                    },
                    child: Text(
                      '${entry.summary!.t!.length < 100 ? entry.summary!.t! : entry.summary!.t!.substring(0, 100)}...'
                          .replaceAll(r'\n', '\n')
                          .replaceAll(r'\r', '')
                          .replaceAll(r'\"', '"'),
                      style: TextStyle(
                        fontSize: 13.0,
                        color: context.theme.textTheme.bodySmall!.color,
                      ),
                      maxLines: 2,
                      overflow: TextOverflow.ellipsis,
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}


// import 'package:flutter/material.dart'; QADIR check this for future why it was

class SummaryPage extends StatefulWidget {
  final String summary;

  const SummaryPage({Key? key, required this.summary}) : super(key: key);

  @override
  _SummaryPageState createState() => _SummaryPageState();
}

class _SummaryPageState extends State<SummaryPage> {
  late PageController _pageController;
  late List<String> pages;
  late List<int> chapterIndices;

  @override
  void initState() {
    super.initState();
    _pageController = PageController();
    pages = widget.summary.split('. '); // Split summary into pages
    chapterIndices = _extractChapterIndices(pages);
  }

  @override
  void dispose() {
    _pageController.dispose();
    super.dispose();
  }

  List<int> _extractChapterIndices(List<String> pages) {
    List<int> indices = [];
    for (int i = 0; i < pages.length; i++) {
      if (pages[i].startsWith("Chapter")) {
        indices.add(i);
      }
    }
    return indices;
  }

  void _previousPage() {
    if (_pageController.page! > 0) {
      _pageController.previousPage(
        duration: Duration(milliseconds: 300),
        curve: Curves.easeInOut,
      );
    }
  }

  void _nextPage() {
    if (_pageController.page! < pages.length - 1) {
      _pageController.nextPage(
        duration: Duration(milliseconds: 300),
        curve: Curves.easeInOut,
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Summary'),
      ),
      body: Column(
        children: [
          Expanded(
            child: PageView.builder(
              controller: _pageController,
              itemCount: pages.length,
              itemBuilder: (context, index) {
                return Center(
                  child: Padding(
                    padding: const EdgeInsets.all(16.0),
                    child: Text(
                      pages[index],
                      style: TextStyle(fontSize: 18.0),
                      textAlign: TextAlign.center,
                    ),
                  ),
                );
              },
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              IconButton(
                icon: Icon(Icons.arrow_back),
                onPressed: _previousPage,
              ),
              IconButton(
                icon: Icon(Icons.arrow_forward),
                onPressed: _nextPage,
              ),
            ],
          ),
        ],
      ),
    );
  }
}
