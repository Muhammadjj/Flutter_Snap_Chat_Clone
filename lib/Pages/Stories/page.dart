// ignore_for_file: library_private_types_in_public_api

import 'package:flutter/material.dart';
import 'package:page_transition/page_transition.dart';
import 'package:snap_chat_clone/Resources/resources.dart';
import '../../Data/stories_json.dart';

class StoriesPage extends StatefulWidget {
  const StoriesPage({super.key});

  @override
  _StoriesPageState createState() => _StoriesPageState();
}

class _StoriesPageState extends State<StoriesPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ResourcesData.colors.black,
      appBar: getAppBar(),
      body: getBody(),
    );
  }

  Widget getBody() {
    var size = MediaQuery.of(context).size;
    return Container(
      decoration: BoxDecoration(
          borderRadius: const BorderRadius.only(
              bottomLeft: Radius.circular(10),
              bottomRight: Radius.circular(10)),
          color: ResourcesData.colors.white),
      child: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.only(left: 10, top: 20, right: 10),
              child: Text(
                "For You",
                style: TextStyle(
                    fontSize: 16,
                    color: ResourcesData.colors.black,
                    fontWeight: FontWeight.bold),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(
                  left: 10, right: 10, top: 10, bottom: 10),
              child: Wrap(
                spacing: 10,
                runSpacing: 10,
                children: List.generate(stories_data.length, (index) {
                  return GestureDetector(
                    onTap: () {
                      Navigator.push(
                          context,
                          PageTransition(
                              type: PageTransitionType.scale,
                              alignment: Alignment.bottomCenter,
                              child: StoriesPage(
                                  // videoUrl: stories_data[index]['videoUrl'],
                                  )));
                    },
                    child: Container(
                      width: (size.width - 30) / 2,
                      height: 250,
                      child: Stack(
                        children: [
                          Container(
                            width: (size.width - 30) / 2,
                            height: 250,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(10),
                                image: DecorationImage(
                                    image: NetworkImage(
                                        (stories_data[index]['img'])),
                                    fit: BoxFit.cover)),
                          ),
                          Container(
                            width: (size.width - 15) / 2,
                            height: 250,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(10),
                                gradient: LinearGradient(
                                    colors: [
                                      ResourcesData.colors.black
                                          .withOpacity(0.25),
                                      ResourcesData.colors.black.withOpacity(0),
                                    ],
                                    end: Alignment.topCenter,
                                    begin: Alignment.bottomCenter)),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              mainAxisAlignment: MainAxisAlignment.end,
                              children: [
                                Padding(
                                  padding: const EdgeInsets.only(left: 10),
                                  child: Text(
                                    stories_data[index]['name'],
                                    style: TextStyle(
                                        color: ResourcesData.colors.white,
                                        fontSize: 16,
                                        fontWeight: FontWeight.bold),
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(
                                      top: 5, left: 10, bottom: 10),
                                  child: Text(
                                    stories_data[index]['date'],
                                    style: TextStyle(
                                        color: ResourcesData.colors.white
                                            .withOpacity(0.7),
                                        fontSize: 13,
                                        fontWeight: FontWeight.bold),
                                  ),
                                ),
                              ],
                            ),
                          )
                        ],
                      ),
                    ),
                  );
                }),
              ),
            ),
          ],
        ),
      ),
    );
  }

  AppBar getAppBar() {
    return AppBar(
      elevation: 0,
      backgroundColor: ResourcesData.colors.white,
      title: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            children: [
              Container(
                width: 40,
                height: 40,
                decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    color: ResourcesData.colors.black.withOpacity(0.1)),
                child: Icon(
                  Icons.person_2,
                  color: ResourcesData.colors.primary,
                  size: 28,
                ),
              ),
              const SizedBox(
                width: 10,
              ),
              Container(
                width: 40,
                height: 40,
                decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    color: ResourcesData.colors.black.withOpacity(0.1)),
                child: Icon(
                  Icons.search,
                  color: ResourcesData.colors.darkGrey,
                  size: 23,
                ),
              )
            ],
          ),
          Text(
            "Stories",
            style: TextStyle(
                fontSize: 18,
                color: ResourcesData.colors.black,
                fontWeight: FontWeight.bold),
          ),
          Row(
            children: [
              Container(
                width: 40,
                height: 40,
                decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    color: ResourcesData.colors.black.withOpacity(0.1)),
                child: Icon(
                  Icons.person_add_alt_1,
                  color: ResourcesData.colors.darkGrey,
                  size: 20,
                ),
              ),
              const SizedBox(
                width: 10,
              ),
              Container(
                width: 40,
                height: 40,
                decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    color: ResourcesData.colors.black.withOpacity(0.1)),
                child: Icon(
                  Icons.notifications_active,
                  color: ResourcesData.colors.darkGrey,
                  size: 20,
                ),
              )
            ],
          ),
        ],
      ),
    );
  }
}
