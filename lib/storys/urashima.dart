import 'package:flutter/cupertino.dart';
import 'package:web_project_1/widgets/story_page_widget.dart';

class UrashimaTaro extends StatelessWidget {
  const UrashimaTaro({super.key});

  @override
  Widget build(BuildContext context) {
    return const StoryPageWidget(
      assetImage: 'assets/waves2.jpg',
      storytext:
          'Urashima Taro was fishing one day when he spotted a turtle, which appeared to be in trouble. Urashima kindly saved the turtle, and I return, the turtle took Urashima to the Dragon Palace, deep underwater. There, Urashima met a lovely princess and spent a few days under the sea (the magic of the turtles had given him gills). However, he did not realize that time in the Dragon palace passed much more slowly than on the land, and that during those few days underwater, three hundred years had passed on land. When Urashima wanted to return to dry land, the princess gave him a box, containing his true age, but did not tell him what was inside. She instructed him never to open the box. When returned home, he found that all his family had died. Stricken with grief, he opened the box, which released a cloud of white smoke, causing Urashima to age and die.',
      titleText: 'Urashima Tarō, who visited the bottom of the sea',
      japaneseText: '海の底を訪れた浦島太郎',
    );
  }
}
