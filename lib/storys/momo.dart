import 'package:flutter/cupertino.dart';
import 'package:web_project_1/widgets/story_page_widget.dart';

class MomoStory extends StatelessWidget {
  const MomoStory({super.key});

  @override
  Widget build(BuildContext context) {
    return const StoryPageWidget(
      assetImage: 'assets/village.jpg',
      titleText: 'Momotarō, the oni-slaying Peach Boy',
      japaneseText: '鬼退治のピーチボーイ、桃太郎',
      storytext:
          'His name literally means Peach Tarō; as Tarō is a common Japanese boys name, it is often translated as Peach Boy. Momotarō is also the title of various books, films, and other works that portray the tale of this hero. According to the present form of the tale (dating to the Edo Period), Momotarō came to earth inside a giant peach, which was found floating down a river by an old, childless woman who was washing clothes there. The woman and her husband discovered the child when they tried to open the peach to eat it. The child explained that he had been sent by Heaven to be their son. The couple named him Momotarō, from momo (peach) and tarō (eldest son in the family).Years later, Momotarō left his parents for an island called "Onigashima" to destroy the marauding oni (demons or ogres) that dwelt there. En route, Momotarō met and befriended a talking dog, monkey, and pheasant, who agreed to help him in his quest. At the island, Momotarō and his animal friends penetrated the demons fort and beat the demons leader, Ura, as well as his army, into surrendering. Momotarō returned home with his new friends, and his family lived comfortably from then on.',
    );
  }
}
