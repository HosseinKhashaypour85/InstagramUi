import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class AddPostScreen extends StatelessWidget {
  AddPostScreen({super.key});

  List<String> postImages = [
    "assets/images/post/post-1.jpg",
    "assets/images/post/post-2.jpg",
    "assets/images/post/post-3.jpg",
    "assets/images/post/post-4.jpg",
    "assets/images/post/post-5.jpg",
    "assets/images/post/post-6.jpg",
    "assets/images/post/post-7.jpg",
    "assets/images/post/post-8.jpg",
    "assets/images/post/post-9.jpg",
    "assets/images/post/post-1.jpg",
    "assets/images/post/post-2.jpg",
    "assets/images/post/post-3.jpg",
    "assets/images/post/post-4.jpg",
    "assets/images/post/post-5.jpg",
    "assets/images/post/post-6.jpg",
    "assets/images/post/post-7.jpg",
    "assets/images/post/post-8.jpg",
    "assets/images/post/post-9.jpg",
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
          width: double.infinity,
          height: double.infinity,
          child: Stack(
            children: [
              Image.asset(
                "assets/images/post/post-3.jpg",
                width: double.infinity,
                height: 500,
                fit: BoxFit.cover,
              ),
              IconButton(
                onPressed: () {
                  Navigator.pop(context);
                },
                icon: const Icon(Icons.arrow_back ,color: Colors.white,),
              ),
              Positioned(
                bottom: 0,
                child: Container(
                  width: MediaQuery.of(context).size.width,
                  height: 350,
                  color: Colors.white,
                  child: Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.symmetric(
                            horizontal: 7.5, vertical: 2),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            DropdownButton<String>(
                              hint: Text("Gallery"),
                              items: <String>[
                                'Downloads',
                                'video',
                                'camera',
                                'others'
                              ].map((String value) {
                                return DropdownMenuItem<String>(
                                  value: value,
                                  child: Text(value),
                                );
                              }).toList(),
                              onChanged: (_) {},
                            ),
                            Row(
                              children: [
                                CircleAvatar(
                                  backgroundColor: Colors.grey.shade700,
                                  child: IconButton(
                                    onPressed: () {},
                                    icon: Icon(
                                      Icons.copy,
                                      color: Colors.white,
                                    ),
                                  ),
                                ),
                                SizedBox(
                                  width: 10,
                                ),
                                CircleAvatar(
                                  backgroundColor: Colors.grey.shade700,
                                  child: IconButton(
                                    onPressed: () {},
                                    icon: Icon(
                                      Icons.camera,
                                      color: Colors.white,
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                      Expanded(
                          child: GridView.builder(
                        padding: EdgeInsets.all(2.5),
                        itemCount: postImages.length,
                        gridDelegate:
                            const SliverGridDelegateWithFixedCrossAxisCount(
                          crossAxisCount: 4,
                          mainAxisSpacing: 2,
                          crossAxisSpacing: 2,
                        ),
                        itemBuilder: (context, index) {
                          return Image.asset(
                            postImages[index],
                            fit: BoxFit.cover,
                          );
                        },
                      )),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
