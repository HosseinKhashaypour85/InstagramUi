import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:igui/model/post_model.dart';
import 'package:igui/model/story_model.dart';

class MainScreen extends StatefulWidget {
  const MainScreen({super.key});

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  @override
  Widget build(BuildContext context) {
    bool isLiked = false;

    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.all(10),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Image.asset(
                      "assets/images/logo/Instagram_Logo_2016.png",
                      width: 120,
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Row(
                        children: [
                          const Icon(
                            Icons.favorite_border,
                            size: 30,
                          ),
                          const SizedBox(
                            width: 10,
                          ),
                          Image.asset(
                            "assets/images/icon/direct.png",
                            width: 30,
                          )
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              const StorySectionWidget(),
              const Divider(),
              ListView.builder(
                physics: const NeverScrollableScrollPhysics(),
                shrinkWrap: true,
                itemCount: PostModel.postData.length,
                itemBuilder: (context, index) {
                  final helper = PostModel.postData[index];
                  return Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 10),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Row(
                              children: [
                                ClipRRect(
                                  borderRadius: BorderRadius.circular(50),
                                  child: Image.asset(
                                    helper.profile,
                                    width: 50,
                                  ),
                                ),
                                const SizedBox(
                                  width: 10,
                                ),
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      helper.title,
                                      style: const TextStyle(
                                          fontWeight: FontWeight.bold,
                                          fontSize: 15),
                                    ),
                                    Text(helper.location),
                                  ],
                                ),
                              ],
                            ),
                            IconButton(
                              onPressed: () {},
                              icon: const Icon(Icons.more_vert_outlined),
                            ),
                          ],
                        ),
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                      Image.asset(
                        helper.image,
                        width: double.infinity,
                        height: 300,
                        fit: BoxFit.cover,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Row(
                            children: [
                              IconButton(
                                  onPressed: () {
                                    setState(() {
                                      helper.toggleLike();
                                    });
                                  },
                                  icon: helper.isLike == true
                                      ? const Icon(
                                          Icons.favorite_border,
                                          color: Colors.red,
                                          size: 28,
                                        )
                                      : const Icon(
                                          Icons.favorite_border,
                                          size: 28,
                                        )),
                              IconButton(
                                  onPressed: () {},
                                  icon: const Icon(
                                    Icons.chat_outlined,
                                    size: 28,
                                  )),
                              IconButton(
                                  onPressed: () {},
                                  icon: const Icon(
                                    Icons.send_outlined,
                                    size: 28,
                                  )),
                            ],
                          ),
                          IconButton(
                            onPressed: () {
                              setState(() {
                                helper.toggleSave();
                              });
                            },
                            icon: helper.isSave == true
                                ? const Icon(
                                    Icons.bookmark,
                                    size: 30,
                                  )
                                : const Icon(
                                    Icons.bookmark_outline,
                                    size: 30,
                                  ),
                          ),
                        ],
                      ),
                      Text(helper.caption,
                          style: const TextStyle(
                            fontSize: 15,
                            fontWeight: FontWeight.bold,
                          ),
                          textAlign: TextAlign.right),
                      Row(
                        children: [
                          Image.asset(
                            "assets/images/profile/me.png",
                            width: 60,
                          ),
                          const Text(
                            "Add a comment...",
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              color: Colors.grey,
                            ),
                          ),
                          const SizedBox(
                            height: 10,
                          ),
                        ],
                      )
                    ],
                  );
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class StorySectionWidget extends StatelessWidget {
  const StorySectionWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: 150,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: StoryModel.storyData.length,
        itemBuilder: (context, index) {
          final helper = StoryModel.storyData[index];
          return Column(
            children: [
              Container(
                padding: const EdgeInsets.all(5),
                margin: const EdgeInsets.all(5),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(50),
                  gradient: helper.seen == false
                      ? const LinearGradient(
                          colors: [Colors.red, Colors.purple, Colors.orange],
                          begin: Alignment.bottomLeft,
                          end: Alignment.topRight,
                        )
                      : const LinearGradient(
                          colors: [
                            Colors.grey,
                            Colors.grey,
                            Colors.grey,
                          ],
                          begin: Alignment.bottomLeft,
                          end: Alignment.topRight,
                        ),
                ),
                child: Container(
                  padding: const EdgeInsets.all(5),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(50),
                    color: Colors.white,
                  ),
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(50),
                    child: Image.asset(
                      helper.image,
                      width: 75,
                    ),
                  ),
                ),
              ),
              helper.seen == true
                  ? Text(
                      helper.title,
                      style: const TextStyle(
                        fontSize: 15,
                        fontWeight: FontWeight.bold,
                        fontFamily: "roboto",
                        color: Colors.grey,
                      ),
                    )
                  : Text(
                      helper.title,
                      style: const TextStyle(
                        fontSize: 15,
                        fontWeight: FontWeight.bold,
                        fontFamily: "roboto",
                        color: Colors.black,
                      ),
                    ),
            ],
          );
        },
      ),
    );
  }
}
