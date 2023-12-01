import 'package:flutter/material.dart';
import 'package:snap_chat_clone/Pages/Camera_Page/camera_page.dart';
import 'package:snap_chat_clone/Pages/Chat/chat_page.dart';
import 'package:snap_chat_clone/Pages/Discover/discover_main.dart';
import 'package:snap_chat_clone/Pages/Map_Page/map_page.dart';
import 'package:snap_chat_clone/Pages/Stories/stories_page.dart';

import '../../Resources/resources.dart';

class RootApp extends StatefulWidget {
  const RootApp({super.key});

  @override
  State<RootApp> createState() => _RootAppState();
}

class _RootAppState extends State<RootApp> {
  int? pageIndex = 0;

  List<Widget> pages = [
    const MapPage(),
    const ChatPage(),
    const CameraPage(),
    const StoriesPage(videoUrl: ""),
    const DiscoverPage(),
  ];

  // ! selected Tab .
  selectedTab(index) {
    setState(() {
      pageIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: getBody(), // Scaffold Body show all pages
      bottomNavigationBar:
          getFooter(), // BottomNavigationBar Design of Using Container
    );
  }

  Widget getBody() {
    return IndexedStack(
      index: pageIndex,
      children: pages,
    );
  }

  // ! Custom BottomNavigationBar Design Widget .
  Widget getFooter() {
    // List of iconTheme means Using this IconData Class .
    List<IconData> iconItems = [
      Icons.map_outlined,
      Icons.chat,
      Icons.camera,
      Icons.menu,
      Icons.person,
    ];

    // List of text define means Icons define text .
    List<String> textItems = ["Map", "Chat", "Camera", "Stories", "Discover"];
    // List of Colors means Icons and text Colors .
    List<Color> colorItems = [
      ResourcesData.colors.green,
      ResourcesData.colors.blue,
      ResourcesData.colors.primary,
      ResourcesData.colors.purple,
      ResourcesData.colors.primary,
    ];

    return Container(
      width: double.infinity,
      height: 90,
      decoration: BoxDecoration(
          color: Colors.black,
          border: Border(
              top:
                  BorderSide(width: 2, color: Colors.black.withOpacity(0.06)))),
      child: Padding(
        padding:
            const EdgeInsets.only(left: 20, right: 20, bottom: 20, top: 10),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: List.generate(textItems.length, (index) {
            return InkWell(
              onTap: () {
                selectedTab(index);
              },
              child: Column(
                children: [
                  Icon(
                    iconItems[index],
                    color: pageIndex == index
                        ? colorItems[index]
                        : Colors.white.withOpacity(0.5),
                  ),
                  Text(
                    textItems[index],
                    style: TextStyle(
                        fontSize: 11,
                        fontWeight: FontWeight.w500,
                        color: pageIndex == index
                            ? Colors.white
                            : Colors.white.withOpacity(0.5)),
                  )
                ],
              ),
            );
          }),
        ),
      ),
    );
  }
}
