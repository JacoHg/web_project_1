import 'package:flutter/cupertino.dart';
import 'package:web_project_1/widgets/story_page_widget.dart';

class HanasakaStory extends StatelessWidget {
  const HanasakaStory({super.key});

  @override
  Widget build(BuildContext context) {
    return const StoryPageWidget(
      assetImage: 'assets/carp.jpg',
      titleText: 'Hanasaka Jiisan',
      japaneseText: '花さかじいさん',
      storytext:
          'The story of the old man that made the flowers bloom. An old childless couple loved their dog. One day, it dug in the garden, and they found a box of gold pieces there. A neighbor thought the dog must be able to find treasure, and arranged to borrow the dog. When it dug in his garden, the dog uncovered only bones, and he killed it. He told the couple that the dog had just dropped dead. They grieved and buried it under the fig tree where they had found the treasure. One night, the dogs master dreamed that the dog told him to chop down the tree and make a mortar from it and pound rice in the mortar. He told his wife, who said they must do as the dog asked. When they did, the rice put into the mortar turned into gold. The neighbor borrowed the mortar, but his rice turned to foul-smelling berries, and he and his wife smashed and burned the mortar.That night, in a dream, the dog told his master to take the ashes and sprinkle them on certain cherry trees. When he did, the cherry trees came into bloom, and the Daimyo (feudal lord), who was passing by, marveled at this and gave him many gifts. The neighbor tried to do the same, but his ashes blew into the Daimyos eyes, so he threw him into prison; when he was released, his village would not let him live there anymore, and he could not, with his wicked ways, find a new home.',
    );
  }
}
