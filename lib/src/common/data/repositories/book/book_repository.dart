import 'package:dio/dio.dart';
import 'package:flutter_ebook_app/src/common/common.dart';

typedef BookRepositoryData = ({CategoryFeed? feed, HttpFailure? failure});

abstract class BookRepository {
  final Dio httpClient;

  const BookRepository(this.httpClient);

  Future<BookRepositoryData> getCategory(String url) async {
    /*try {
      final res = await httpClient.get(url);
      CategoryFeed category;
      final Xml2Json xml2json = Xml2Json();
      xml2json.parse(res.data.toString());
      final json = jsonDecode(xml2json.toGData());
      category = CategoryFeed.fromJson(json as Map<String, dynamic>);
      return (feed: category, failure: null);
    } on DioException catch (error) {
      final statusCode = error.response?.statusCode ?? 500;
      if (statusCode == 404) {
        return (feed: null, failure: HttpFailure.notFound);
      }
      return (feed: null, failure: HttpFailure.unknown);
    }*/
    CategoryFeed category = CategoryFeed(
      version: "1.0",
      encoding: "UTF-8",
      feed: Feed(
        xmlLang: "en",
        xmlns: "http://www.w3.org/2005/Atom",
        xmlnsDcterms: "http://purl.org/dc/terms/",
        xmlnsThr: "http://purl.org/syndication/thread/1.0",
        xmlnsApp: "http://www.w3.org/2007/app",
        xmlnsOpensearch: "http://a9.com/-/spec/opensearch/1.1/",
        xmlnsOpds: "http://opds-spec.org/2010/catalog",
        xmlnsXsi: "http://www.w3.org/2001/XMLSchema-instance",
        xmlnsOdl: "http://opds-spec.org/odl",
        xmlnsSchema: "http://schema.org/",
        id: Id(t: "feed123"),
        title: Id(t: "Sample Feed Title"),
        updated: Id(t: "2025-02-20T12:00:00Z"),
        icon: Id(t: "https://example.com/icon.png"),
        author: Author(
          name: Id(t: "John Doe"),
          uri: Id(t: "https://example.com"),
          email: Id(t: "johndoe@example.com"),
        ),
        link: [
          Link(
            rel: "self",
            type: "application/atom+xml",
            href: "https://example.com/entry-001",
          ),
          Link(
            rel: "self",
            type: "application/atom+xml",
            href: "https://example.com/entry-001",
          ),
        ],
        opensearchTotalResults: Id(t: "100"),
        opensearchItemsPerPage: Id(t: "10"),
        opensearchStartIndex: Id(t: "1"),
        entry: [
          Entry(
            title: Id(t: "Sample Entry 1"),
            id: Id(t: "entry1"),
            author: Author1(
              name: Id(t: "WALTER ISAACSON"),
              uri: Id(t: "https://example.com/walter"),
            ),
            published: Id(t: "2025-02-20T10:00:00Z"),
            updated: Id(t: "2025-02-20T11:00:00Z"),
            dctermsLanguage: Id(t: "en"),
            dctermsPublisher: Id(t: "Sample Publisher"),
            dctermsIssued: Id(t: "2025"),
            summary: Id(t: 
                  "Steve Jobs by Walter Isaacson\n"
                  "A Fully Detailed 3000-Word Summary with Chapter-by-Chapter Breakdown\n\n"
                  "Introduction: The Visionary Who Changed the World\n"
                  "Walter Isaacson’s Steve Jobs is the definitive biography of one of the most influential figures in modern technology. Commissioned by Jobs himself, this book is based on over 40 interviews with Jobs and over 100 interviews with family, friends, colleagues, and competitors. It provides an unfiltered look at the life, personality, philosophy, and leadership style of the man who revolutionized personal computing, music, animated films, smartphones, and tablets.\n"
                  "Steve Jobs was a perfectionist, visionary, and innovator with an uncompromising approach to design and business. His journey—from a troubled youth to the co-founder of Apple, his ousting from the company, his return, and his ultimate transformation of the tech industry—is both inspiring and deeply insightful.\n"
                  "This summary will take you chapter by chapter through the book, analyzing Jobs’ personality, leadership, failures, successes, and the lessons he left behind.\n\n"
                  "Chapter-by-Chapter Breakdown\n"
                  "Chapter 1: Childhood – Abandoned and Chosen\n"
                  "Steve Jobs was born in 1955 to Abdulfattah Jandali and Joanne Schieble, who gave him up for adoption. Paul and Clara Jobs, a middle-class couple in Silicon Valley, raised him.\n"
                  "His adoptive parents assured him: “You were chosen.” This idea of being special deeply influenced him. But he also struggled with abandonment issues, making him emotionally volatile.\n"
                  "Even as a child, Jobs was highly intelligent but rebellious. He disliked the traditional education system, questioning teachers and refusing to conform. His love for electronics and tinkering was nurtured in the garage of his adoptive father, Paul, who taught him about mechanics and craftsmanship.\n"
                  "This chapter highlights Jobs' early defiance, curiosity, and hunger for innovation—qualities that would later define his leadership.\n\n"
                  "Chapter 2: The Woz Friendship and the Birth of Apple\n"
                  "Jobs met Steve Wozniak (Woz), a brilliant engineer, in high school. Woz was a genius at building circuits, while Jobs was a visionary and salesman.\n"
                  "They started with pranks—such as hacking payphones using a \"blue box\" to make free calls. This small venture gave Jobs his first taste of monetizing innovation.\n"
                  "By the early 1970s, both were fascinated by computers. When Woz built a primitive personal computer, Jobs saw the business potential and convinced Woz to sell it as a product. This led to the founding of Apple in 1976, inside Jobs’ parents' garage.\n"
                  "Jobs' ability to see the future of personal computing and market ideas effectively set him apart from engineers like Woz, who were purely technical.\n\n"
                  "Chapter 3: The Rise of Apple – The Birth of the Macintosh\n"
                  "Apple’s first big product, the Apple II (1977), was a massive success, making millions of dollars. But it was the Macintosh (1984) that changed the world.\n"
                  "Jobs obsessed over design and user experience, making his engineers rework prototypes dozens of times. He believed:\n"
                  "\"People don’t know what they want until you show it to them.\"\n"
                  "The Macintosh, with its graphical user interface (GUI) and mouse, was revolutionary. However, Jobs’ perfectionism and aggressive leadership alienated colleagues, leading to internal conflicts at Apple.\n\n"
                  "Chapter 4: The Downfall – Jobs Gets Fired from Apple\n"
                  "By 1985, Apple was struggling. The Macintosh wasn’t selling well due to high prices and competition from IBM.\n"
                  "Jobs clashed with Apple’s CEO, John Sculley (whom Jobs had hired), leading to a power struggle. Ultimately, Apple’s board sided with Sculley, and Jobs was forced out of his own company.\n"
                  "This was a turning point in his life. He later said:\n"
                  "\"Getting fired from Apple was the best thing that could have happened to me. It freed me to enter one of the most creative periods of my life.\"\n\n"
                  "Chapter 5: The Wilderness – NeXT, Pixar, and Personal Growth\n"
                  "After leaving Apple, Jobs started NeXT, a new computer company aimed at revolutionizing education. However, NeXT computers were too expensive and failed commercially.\n"
                  "Meanwhile, he bought Pixar (a small animation studio) from George Lucas.\n"
                  "This turned out to be his biggest success during this period. Pixar partnered with Disney and released Toy Story (1995)—the first-ever fully computer-animated film. It became a massive hit, making Jobs a billionaire.\n"
                  "This chapter highlights Jobs’ resilience and ability to pivot, even after failure.\n\n"
                  "Chapter 6: The Return to Apple – The Renaissance\n"
                  "In 1997, Apple was on the brink of bankruptcy. Desperate, they bought NeXT and brought Jobs back.\n"
                  "His first move? Slash unnecessary products, restructure teams, and focus on design. He introduced the iMac (1998)—a sleek, colorful computer that revitalized Apple.\n"
                  "His famous philosophy:\n"
                  "\"Innovation is saying no to a thousand things.\"\n"
                  "This marked Apple’s comeback.\n\n"
                  "Chapter 7: The Digital Revolution – iPod, iTunes, iPhone, and iPad\n"
                  "Jobs redefined multiple industries:\n"
                  "Music Industry (iPod & iTunes): The iPod (2001) and iTunes Store (2003) revolutionized how people bought and listened to music.\n"
                  "Mobile Phones (iPhone): The iPhone (2007) was a game-changer—touchscreen, internet, and apps in one device.\n"
                  "Tablets (iPad): The iPad (2010) pioneered the tablet industry.\n"
                  "Jobs reshaped technology, entertainment, and communication, proving that design and user experience mattered more than specs.\n\n"
                  "Chapter 8: The Final Years and Legacy\n"
                  "In 2003, Jobs was diagnosed with pancreatic cancer but initially refused conventional treatment, trying alternative medicine instead.\n"
                  "By the time he sought surgery in 2004, it was too late. Still, he worked tirelessly, launching new Apple products while battling his illness.\n"
                  "On October 5, 2011, Steve Jobs passed away.\n"
                  "At his Stanford Commencement Speech (2005), he left this powerful message:\n"
                  "\"Your time is limited, so don’t waste it living someone else’s life.\"\n\n"
                  "Key Takeaways from Steve Jobs’ Life\n"
                  "Passion Over Money – Jobs never chased wealth. He pursued innovation and excellence, and success followed.\n"
                  "Obsess Over Details – His focus on design, simplicity, and user experience made Apple stand out.\n"
                  "Resilience After Failure – Jobs was fired from Apple but came back stronger.\n"
                  "Challenge the Status Quo – He revolutionized multiple industries, from computers to phones to movies.\n"
                  "Think Different – His famous Apple campaign said it best: “Here’s to the crazy ones.”\n\n"
                  "Conclusion: The Man Who Changed the World\n"
                  "Steve Jobs was more than just a businessman—he was a visionary, artist, and perfectionist. His ability to merge technology with creativity changed the world forever.\n"
                  "This biography by Walter Isaacson reveals the genius, flaws, and relentless ambition of a man who refused to settle for anything less than perfection.\n"
                  "Whether you admire or criticize him, his impact is undeniable.\n"
                  "\"Some people say innovation is about saying yes to everything. But that’s not what it is. It’s about saying NO to all but the most important things.\" — Steve Jobs."),
            category: [
              Category(term: "Technology", label: "Tech"),
            ],
            link: [
              Link1(
                rel: "alternate",
                type: "text/html",
                href: "https://example.com/entry-001",
              ),
              Link1(
                rel: "alternate",
                type: "text/html",
                href: "https://example.com/entry-001",
              ),
            ],
            schemaSeries: SchemaSeries(
                schemaPosition: "1",
                schemaName: "Schema One",
                schemaUrl: "https://example.com/schema1"),
          ),
          Entry(
            title: Id(t: "Sample Entry 2"),
            id: Id(t: "entry2"),
            author: Author1(
              name: Id(t: "Alice Johnson"),
              uri: Id(t: "https://example.com/alice"),
            ),
            published: Id(t: "2025-02-19T14:00:00Z"),
            updated: Id(t: "2025-02-19T15:30:00Z"),
            dctermsLanguage: Id(t: "en"),
            dctermsPublisher: Id(t: "Sample Publisher"),
            dctermsIssued: Id(t: "2025"),
            summary: Id(t: "This is a sample summary for Entry 2."),
            category: [
              Category(term: "Science", label: "Science"),
            ],
            link: [
              Link1(
                rel: "alternate",
                type: "text/html",
                href: "https://example.com/entry-002",
              ),
              Link1(
                rel: "alternate",
                type: "text/html",
                href: "https://example.com/entry-002",
              ),
            ],
            schemaSeries: SchemaSeries(
                schemaPosition: "1",
                schemaName: "Schema One",
                schemaUrl: "https://example.com/schema1"),
          ),
          Entry(
            title: Id(t: "Sample Entry 3"),
            id: Id(t: "entry3"),
            author: Author1(
              name: Id(t: "John Doe"),
              uri: Id(t: "https://example.com/john"),
            ),
            published: Id(t: "2025-02-18T10:30:00Z"),
            updated: Id(t: "2025-02-18T11:45:00Z"),
            dctermsLanguage: Id(t: "en"),
            dctermsPublisher: Id(t: "Tech Publisher"),
            dctermsIssued: Id(t: "2025"),
            summary: Id(t: "A sample summary for Entry 3."),
            category: [
              Category(term: "Technology", label: "Technology"),
            ],
            link: [
              Link1(
                rel: "alternate",
                type: "text/html",
                href: "https://example.com/entry-003",
              ),
              Link1(
                rel: "alternate",
                type: "text/html",
                href: "https://example.com/entry-003",
              ),
            ],
            schemaSeries: SchemaSeries(
                schemaPosition: "2",
                schemaName: "Schema Two",
                schemaUrl: "https://example.com/schema2"),
          ),
          Entry(
            title: Id(t: "Sample Entry 4"),
            id: Id(t: "entry4"),
            author: Author1(
              name: Id(t: "Emma Brown"),
              uri: Id(t: "https://example.com/emma"),
            ),
            published: Id(t: "2025-02-17T08:00:00Z"),
            updated: Id(t: "2025-02-17T09:15:00Z"),
            dctermsLanguage: Id(t: "fr"),
            dctermsPublisher: Id(t: "French Publisher"),
            dctermsIssued: Id(t: "2025"),
            summary: Id(t: "This is another sample summary for Entry 4."),
            category: [
              Category(term: "Literature", label: "Literature"),
            ],
            link: [
              Link1(
                rel: "alternate",
                type: "text/html",
                href: "https://example.com/entry-004",
              ),
              Link1(
                rel: "alternate",
                type: "text/html",
                href: "https://example.com/entry-003",
              ),
            ],
            schemaSeries: SchemaSeries(
                schemaPosition: "3",
                schemaName: "Schema Three",
                schemaUrl: "https://example.com/schema3"),
          ),
          Entry(
            title: Id(t: "Sample Entry 5"),
            id: Id(t: "entry5"),
            author: Author1(
              name: Id(t: "Michael Smith"),
              uri: Id(t: "https://example.com/michael"),
            ),
            published: Id(t: "2025-02-16T12:20:00Z"),
            updated: Id(t: "2025-02-16T13:40:00Z"),
            dctermsLanguage: Id(t: "es"),
            dctermsPublisher: Id(t: "Spanish Publisher"),
            dctermsIssued: Id(t: "2025"),
            summary: Id(
                t: "Entry 5 contains information about science and research."),
            category: [
              Category(term: "Research", label: "Research"),
            ],
            link: [
              Link1(
                rel: "alternate",
                type: "text/html",
                href: "https://example.com/entry-005",
              ),
              Link1(
                rel: "alternate",
                type: "text/html",
                href: "https://example.com/entry-005",
              ),
            ],
            schemaSeries: SchemaSeries(
                schemaPosition: "4",
                schemaName: "Schema Four",
                schemaUrl: "https://example.com/schema4"),
          ),
        ],
      ),
    );
    return (feed: category, failure: null);
  }
}
