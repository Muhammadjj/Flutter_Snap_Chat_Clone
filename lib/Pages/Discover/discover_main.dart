import 'package:flutter/material.dart';
import '../../Resources/resources.dart';
import 'Components/custom_app_bar.dart';
import 'Components/discover_other_files.dart';

class DiscoverPage extends StatefulWidget {
  const DiscoverPage({super.key});

  @override
  State<DiscoverPage> createState() => _DiscoverPageState();
}

class _DiscoverPageState extends State<DiscoverPage> {
  @override
  Widget build(BuildContext context) {
    var sizeHeight = MediaQuery.sizeOf(context).height;
    var sizeWidth = MediaQuery.sizeOf(context).width;
    return Scaffold(
        appBar: const GetAppBar(), body: getBody(sizeHeight, sizeWidth));
  }

  Widget getBody(sizeHeight, sizeWidth) {
    return Container(
        width: sizeWidth,
        height: sizeHeight,
        decoration: BoxDecoration(
            borderRadius: const BorderRadius.only(
                bottomLeft: Radius.circular(10),
                bottomRight: Radius.circular(10)),
            color: ResourcesData.colors.black.withOpacity(0.1)),
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(12.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(
                  height: sizeHeight * 0.013,
                ),
                // ! Quick Style Method .
                getContact(sizeHeight, sizeWidth),
                const SizedBox(
                  height: 10,
                ),
                // ! popular Snap Star method .
                getPopularStar(sizeHeight, sizeWidth),
                // ! Trending Method .
                const SizedBox(
                  height: 10,
                ),
                getTrendingLenses(sizeHeight, sizeWidth),
                // ! Trending Method .
                const SizedBox(
                  height: 10,
                ),
                getTvShows(sizeHeight, sizeWidth),
              ],
            ),
          ),
        ));
  }
}
