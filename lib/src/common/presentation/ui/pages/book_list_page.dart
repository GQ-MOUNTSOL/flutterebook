import 'package:flutter/material.dart';
import 'package:flutter_ebook_app/src/common/common.dart';
import 'package:flutter_ebook_app/src/common/presentation/ui/widgets/book_list_item.dart';

class BookListPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Book List'),
      ),
      body: ListView(
        children: [
          BookListItem(
            entry: Entry(
              title: Id(t: "Steve Jobs by Walter Isaacson"),
              summary: Id(t: "Sample book summaries 👍\n\n"
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
              author: Author1(
                name: Id(t: "Walter Isaacson"),
                uri: Id(t: "https://example.com/walter"),
              ),
              link: [
                Link1(
                  rel: "alternate",
                  type: "text/html",
                  href: "https://example.com/steve-jobs",
                ),
              ],
            ),
          ),
          // Add more BookListItem widgets as needed
        ],
      ),
    );
  }
}