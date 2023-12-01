import 'package:flutter/material.dart';

import '../../../Resources/resources.dart';

Widget getFooter(sizeHeight, sizeWidth) {
  return Padding(
    padding: const EdgeInsets.only(left: 30, top: 60),
    child: Column(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(
              children: [
                Container(
                  width: 40,
                  height: 40,
                  decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      color: ResourcesData.colors.black.withOpacity(0.3)),
                  child: Icon(
                    Icons.person_2,
                    color: ResourcesData.colors.yellow,
                    size: 23,
                  ),
                ),
                SizedBox(
                  width: sizeWidth * 0.02,
                ),
                Container(
                  width: 40,
                  height: 40,
                  decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      color: ResourcesData.colors.black.withOpacity(0.3)),
                  child: Icon(
                    Icons.search,
                    color: ResourcesData.colors.white,
                    size: 23,
                  ),
                )
              ],
            ),
            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  width: 40,
                  height: 40,
                  decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      color: Colors.black.withOpacity(0.3)),
                  child: Icon(
                    Icons.person_add_alt,
                    color: ResourcesData.colors.white,
                    size: 20,
                  ),
                ),
                SizedBox(
                  width: sizeWidth * 0.025,
                ),
                Container(
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(50),
                      color: Colors.black.withOpacity(0.3)),
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Column(
                      children: [
                        Icon(
                          Icons.refresh,
                          color: ResourcesData.colors.white,
                          size: 25,
                        ),
                        SizedBox(
                          height: sizeHeight * 0.02,
                        ),
                        Icon(
                          Icons.light_mode_sharp,
                          color: ResourcesData.colors.white,
                          size: 25,
                        ),
                        SizedBox(
                          height: sizeHeight * 0.02,
                        ),
                        Icon(
                          Icons.play_arrow,
                          color: ResourcesData.colors.white,
                          size: 25,
                        ),
                        SizedBox(
                          height: sizeHeight * 0.02,
                        ),
                        Icon(
                          Icons.note_add,
                          color: ResourcesData.colors.white,
                          size: 25,
                        ),
                        SizedBox(
                          height: sizeHeight * 0.02,
                        ),
                        Icon(
                          Icons.arrow_downward_outlined,
                          color: ResourcesData.colors.white,
                          size: 25,
                        ),
                      ],
                    ),
                  ),
                )
              ],
            )
          ],
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            IconButton(
              onPressed: null,
              icon: Icon(
                Icons.video_collection_outlined,
                color: ResourcesData.colors.white,
                size: 28,
              ),
            ),
            SizedBox(
              width: sizeWidth * 0.02,
            ),
            Container(
              width: 80,
              height: 80,
              decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  border: Border.all(width: 7, color: Colors.white)),
            ),
            SizedBox(
              width: sizeWidth * 0.02,
            ),
            IconButton(
              onPressed: null,
              icon: Icon(
                Icons.emoji_emotions,
                color: ResourcesData.colors.white,
                size: 28,
              ),
            )
          ],
        )
      ],
    ),
  );
}
