import 'package:flutter/material.dart';

import 'package:instagram_clone/core/constantimages.dart';
import 'package:instagram_clone/view/dummydb.dart';
import 'package:instagram_clone/view/home_page/widgets/custom_post_container.dart';
import 'package:instagram_clone/view/home_page/widgets/custom_story_avatar.dart';

class Homescreen extends StatelessWidget {
  const Homescreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
            centerTitle: true,
            leading: Icon(Icons.camera_alt),
            title: Image.asset(
              ImageConstants.instatext,
              scale: 1.5,
            ),
            actions: [
              IconButton(onPressed: () {}, icon: Icon(Icons.video_settings)),
              IconButton(onPressed: () {}, icon: Icon(Icons.send))
            ]),
        body: Column(
          children: [
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: List.generate(
                    DummyDb.storyList.length,
                    (index) => CustomStoryAvatar(
                          proPic: DummyDb.storyList[index]["proPic"],
                          userName: DummyDb.storyList[index]["userName"],
                          isLive: DummyDb.storyList[index]["isLive"],
                        )),
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Custompost()
            // ListView.builder(
            //   scrollDirection: Axis.horizontal,
            //   itemCount: 10,
            //   shrinkWrap: true,
            //   itemBuilder: (context, index) => CustomStoryAvatar(),
            // )
          ],
        ));
  }
}
