import 'package:flutter/cupertino.dart';
import 'package:web_project_1/widgets/story_page_widget.dart';

class BunbukuStory extends StatelessWidget {
  const BunbukuStory({super.key});

  @override
  Widget build(BuildContext context) {
    return  const StoryPageWidget(
      assetImage: 'assets/puter.jpg',
      titleText: 'Bunbuku Chagama, the shape-changing teakettle',
      japaneseText: '形が変わるやかん「ぶんぶく茶釜',
      storytext:
          '“Bunbuku Chagama” roughly translates to "happiness bubbling over like a tea pot." The story tells of a poor man who found a tanuki (raccoon dog) caught in a trap. Feeling sorry for the animal, he set it free. That night, the tanuki came to the poor mans house to thank him for his kindness. The tanuki transformed itself into a chagama and told the man to sell him for money. The man sold the tanuki-teapot to a monk, who brought it home and, after scrubbing it harshly, set it over the fire to boil water. Unable to stand the heat, the tanuki teapot sprouted legs and, in its half-transformed state, ran away.The tanuki returned to the poor man with another idea. The man would set up a roadside attraction (a little circus-like setup) and charge admission for people to see a teapot walking a tightrope. The plan worked, and each gained something good from the other; the man was no longer poor and the tanuki had a new friend and home.',
    );
  }
}
