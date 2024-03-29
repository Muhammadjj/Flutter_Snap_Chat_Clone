import 'package:flutter/material.dart';
import 'package:snap_chat_clone/Resources/resources.dart';
import 'package:video_player/video_player.dart';

class StoriesPage extends StatefulWidget {
  const StoriesPage({super.key, required this.videoUrl});
  final String videoUrl;
  @override
  State<StoriesPage> createState() => _StoriesPageState();
}

class _StoriesPageState extends State<StoriesPage> {
  late VideoPlayerController _controller;

  @override
  void initState() {
    super.initState();
    _controller = VideoPlayerController.asset(widget.videoUrl);

    _controller.addListener(() {
      setState(() {});
    });
    // _controller.setLooping(true);
    _controller.initialize().then((_) => setState(() {}));
    _controller.play();
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return const Scaffold();
  }

  Widget getBody() {
    var size = MediaQuery.of(context).size;
    return Container(
      width: size.width,
      height: size.height,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
        // color: primary,
      ),
      child: Stack(
        children: [
          SizedBox(
            width: size.width,
            height: size.height,
            child: ClipRRect(
                borderRadius: BorderRadius.circular(20),
                child: VideoPlayer(_controller)),
          ),
          Container(
            decoration: BoxDecoration(
                gradient: LinearGradient(colors: [
              ResourcesData.colors.black.withOpacity(0.6),
              ResourcesData.colors.black.withOpacity(0),
            ], end: Alignment.topCenter, begin: Alignment.bottomCenter)),
          ),
          Padding(
            padding: const EdgeInsets.only(right: 15, bottom: 30),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                const SizedBox(
                  width: 40,
                ),
                Column(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Icon(
                      Icons.keyboard_arrow_up_rounded,
                      color: ResourcesData.colors.white,
                      size: 28,
                    ),
                    Container(
                      decoration: BoxDecoration(
                          color: ResourcesData.colors.white,
                          borderRadius: BorderRadius.circular(50)),
                      child: const Padding(
                        padding: EdgeInsets.only(
                            left: 12, right: 12, bottom: 8, top: 8),
                        child: Text(
                          "View More Episodes",
                          style: TextStyle(
                              fontSize: 14, fontWeight: FontWeight.bold),
                        ),
                      ),
                    )
                  ],
                ),
                Container(
                  width: 35,
                  height: 35,
                  decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      color: Colors.black.withOpacity(0.2),
                      border: Border.all(
                          color: ResourcesData.colors.white.withOpacity(0.2))),
                  child: Center(
                    child: Icon(
                      Icons.location_on_outlined,
                      size: 20,
                      color: ResourcesData.colors.white,
                    ),
                  ),
                )
              ],
            ),
          )
        ],
      ),
    );
  }

  Widget getAppBar() {
    return AppBar(
      backgroundColor: ResourcesData.colors.black,
      elevation: 0,
      leading: IconButton(
        onPressed: () {
          Navigator.pop(context);
        },
        icon: const Icon(Icons.close),
      ),
      actions: [
        IconButton(
          onPressed: () {},
          icon: const Icon(
            Icons.favorite,
            size: 20,
          ),
        ),
        IconButton(
          onPressed: () {},
          icon: const Icon(
            Icons.do_not_touch,
            size: 20,
          ),
        )
      ],
    );
  }
}
