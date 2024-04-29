import 'package:flutter/cupertino.dart';
import 'package:web_project_1/widgets/story_page_widget.dart';

class BanchoStory extends StatelessWidget {
  const BanchoStory({super.key});

  @override
  Widget build(BuildContext context) {
    return const StoryPageWidget(
      assetImage: 'assets/gall.jpg',
      titleText:
          'Banchō Sarayashiki, the ghost story of Okiku and the Nine Plates.',
      japaneseText: '番長皿屋敷、お菊と九皿の怪談。',
      storytext:
          'Banchō Sarayashiki (番町皿屋敷, The Dish Mansion at Banchō) is a Japanese ghost story (kaidan) of broken trust and broken promises, leading to a dismal fate. According to the story, there was a beautiful servant named Okiku who worked for the samurai Aoyama Tessan. Okiku often refused him when he said he was in love with her and wanted to marry her, so he tricked her into believing that she had carelessly lost one of the familys ten precious Delft plates. Such a crime would normally result in her death. In a frenzy, she counted and recounted the nine plates many times. However, she could not find the tenth and went to Aoyama in guilty tears. The samurai offered to overlook the matter if she finally became his lover, but again she refused. Enraged, Aoyama threw her down a well to her death.It is said that Okiku became a vengeful spirit (Onryō) who tormented her murderer by counting to nine and then making a terrible shriek to represent the missing tenth plate – or perhaps she had tormented herself and was still trying to find the tenth plate but cried out in agony when she never could. In some versions of the story, this torment continued until an exorcist or neighbor shouted "ten" in a loud voice at the end of her count. Her ghost, finally relieved that someone had found the plate for her, haunted the samurai no more.',
    );
  }
}
