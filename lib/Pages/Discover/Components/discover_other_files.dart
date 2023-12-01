import 'package:flutter/material.dart';
import '../../../Data/discover_json.dart';
import '../../../Resources/resources.dart';

// ! Widget of Trending  Data .
Widget getTvShows(sizeHeight, sizeWidth) {
  return Column(
    crossAxisAlignment: CrossAxisAlignment.start,
    children: [
      // heading Section .
      Padding(
        padding: const EdgeInsets.only(top: 8, bottom: 12),
        child: Text("TV Shows",
            style: ResourcesData.textStyle.headingDiscoverTextStyle()),
      ),
      Container(
        width: sizeWidth - 25,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
            color: ResourcesData.colors.white,
            boxShadow: [
              BoxShadow(
                color: ResourcesData.colors.darkGrey.withOpacity(0.2),
                spreadRadius: 2.5,
                blurRadius: 5,
                // * changes position of shadow .
              ),
            ]),
        child: Column(
          children: [
            Column(
              children: List.generate(popular_show_data.length, (index) {
                return Column(
                  children: [
                    Padding(
                        padding: const EdgeInsets.only(
                            left: 10, right: 10, top: 12, bottom: 5),
                        child: ListTile(
                          minVerticalPadding: 0,
                          isThreeLine: false,
                          contentPadding: const EdgeInsets.all(0),
                          leading: Container(
                            height: 50,
                            width: 50,
                            decoration: const BoxDecoration(
                              shape: BoxShape.circle,
                            ),
                            child: CircleAvatar(
                                radius: 40,
                                backgroundImage: NetworkImage(
                                  popular_show_data[index]["img"],
                                )),
                          ),
                          title: Text(
                            popular_show_data[index]["name"],
                            style:
                                ResourcesData.textStyle.nameDiscoverTextStyle(),
                          ),
                          subtitle: Text(
                            popular_show_data[index]["nickname"],
                            style: ResourcesData.textStyle
                                .nickNameDiscoverTextStyle(),
                          ),
                        )),
                    // * Using Divider Because View sprat ListTile .
                    const Padding(
                      padding: EdgeInsets.symmetric(horizontal: 12.0),
                      child: Divider(thickness: 0.5),
                    ),
                  ],
                );
              }),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(
                "View More ...",
                style: ResourcesData.textStyle.headingDiscoverTextStyle(),
              ),
            ),
          ],
        ),
      )
    ],
  );
}

// ! Widget of Trending  Data .
Widget getTrendingLenses(sizeHeight, sizeWidth) {
  return Column(
    crossAxisAlignment: CrossAxisAlignment.start,
    children: [
      // heading Section .
      Padding(
        padding: const EdgeInsets.only(top: 8, bottom: 12),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text("Trending Lenses",
                style: ResourcesData.textStyle.headingDiscoverTextStyle()),
            Row(
              children: [
                Text("Explore Lenses",
                    style: ResourcesData.textStyle
                        .nameDiscoverTextStyle()
                        .copyWith(
                            color: ResourcesData.colors.black.withOpacity(0.5),
                            fontSize: 13)),
                const SizedBox(
                  width: 5,
                ),
                Icon(
                  Icons.arrow_forward_ios,
                  size: 10,
                  color: ResourcesData.colors.black.withOpacity(0.5),
                )
              ],
            )
          ],
        ),
      ),
      Container(
        width: sizeWidth - 25,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
            color: ResourcesData.colors.white,
            boxShadow: [
              BoxShadow(
                color: ResourcesData.colors.darkGrey.withOpacity(0.2),
                spreadRadius: 2.5,
                blurRadius: 5,
                // * changes position of shadow .
              ),
            ]),
        child: Column(
          children: [
            Column(
              children: List.generate(trending_lense_data.length, (index) {
                return Column(
                  children: [
                    Padding(
                        padding: const EdgeInsets.only(
                            left: 10, right: 10, top: 12, bottom: 5),
                        child: ListTile(
                          minVerticalPadding: 0,
                          isThreeLine: false,
                          contentPadding: const EdgeInsets.all(0),
                          leading: Container(
                            height: 50,
                            width: 50,
                            decoration: BoxDecoration(
                                shape: BoxShape.circle,
                                border: Border.all(
                                    color: ResourcesData.colors.blue,
                                    width: 2)),
                            child: CircleAvatar(
                                radius: 40,
                                backgroundImage: NetworkImage(
                                  trending_lense_data[index]["img"],
                                )),
                          ),
                          title: Text(
                            trending_lense_data[index]["name"],
                            style:
                                ResourcesData.textStyle.nameDiscoverTextStyle(),
                          ),
                          subtitle: Text(
                            trending_lense_data[index]["nickname"],
                            style: ResourcesData.textStyle
                                .nickNameDiscoverTextStyle(),
                          ),
                        )),
                    // * Using Divider Because View sprat ListTile .
                    const Padding(
                      padding: EdgeInsets.symmetric(horizontal: 12.0),
                      child: Divider(thickness: 0.5),
                    ),
                  ],
                );
              }),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(
                "View More ...",
                style: ResourcesData.textStyle.headingDiscoverTextStyle(),
              ),
            ),
          ],
        ),
      )
    ],
  );
}

// ! Widget of Popular star Data .
Widget getPopularStar(sizeHeight, sizeWidth) {
  return Column(
    crossAxisAlignment: CrossAxisAlignment.start,
    children: [
      // ! heading Section .
      Padding(
        padding: const EdgeInsets.only(top: 8, bottom: 12),
        child: Text(
          "Popular Snap Stars",
          style: ResourcesData.textStyle.headingDiscoverTextStyle(),
        ),
      ),
      Container(
        width: sizeWidth - 25,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
            color: ResourcesData.colors.white,
            boxShadow: [
              BoxShadow(
                color: ResourcesData.colors.darkGrey.withOpacity(0.2),
                spreadRadius: 2.5,
                blurRadius: 5,
                // * changes position of shadow .
              ),
            ]),
        child: Column(
          children: [
            Column(
              children: List.generate(popular_star_data.length, (index) {
                return Column(
                  children: [
                    Padding(
                        padding: const EdgeInsets.only(
                            left: 10, right: 10, top: 12, bottom: 5),
                        child: ListTile(
                          minVerticalPadding: 0,
                          isThreeLine: false,
                          contentPadding: const EdgeInsets.all(0),
                          leading: Container(
                            height: 50,
                            width: 50,
                            decoration: BoxDecoration(
                                shape: BoxShape.circle,
                                border: Border.all(
                                    color: ResourcesData.colors.blue,
                                    width: 2)),
                            child: CircleAvatar(
                                radius: 40,
                                backgroundImage: NetworkImage(
                                  popular_star_data[index]["img"],
                                )),
                          ),
                          title: Text(
                            popular_star_data[index]["name"],
                            style:
                                ResourcesData.textStyle.nameDiscoverTextStyle(),
                          ),
                          subtitle: Text(
                            popular_star_data[index]["nickname"],
                            style: ResourcesData.textStyle
                                .nickNameDiscoverTextStyle(),
                          ),
                          trailing: Container(
                            width: (sizeWidth - 88) * 0.3,
                            color: const Color.fromARGB(0, 144, 96, 96),
                            child: Row(
                              children: [
                                Container(
                                  width: sizeWidth * 0.2,
                                  height: sizeHeight * 0.05,
                                  decoration: BoxDecoration(
                                      color: ResourcesData.colors.darkGrey
                                          .withOpacity(0.4),
                                      borderRadius: BorderRadius.circular(30)),
                                  child: Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceAround,
                                    children: [
                                      const Icon(Icons.perm_camera_mic,
                                          size: 20),
                                      Text("Voice",
                                          style: ResourcesData.textStyle
                                              .addDiscoverTextStyle())
                                    ],
                                  ),
                                )
                              ],
                            ),
                          ),
                        )),
                    // * Using Divider Because View sprat ListTile .
                    const Padding(
                      padding: EdgeInsets.symmetric(horizontal: 12.0),
                      child: Divider(thickness: 0.5),
                    ),
                  ],
                );
              }),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(
                "View More ...",
                style: ResourcesData.textStyle.headingDiscoverTextStyle(),
              ),
            ),
          ],
        ),
      )
    ],
  );
}

// ! Widget of Quick Style Snap People
Widget getContact(sizeHeight, sizeWidth) {
  return Column(
    crossAxisAlignment: CrossAxisAlignment.start,
    children: [
      // heading Section .
      Text(
        "Quick Style",
        style: ResourcesData.textStyle.headingDiscoverTextStyle(),
      ),
      Container(
        width: sizeWidth - 25,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
            color: ResourcesData.colors.white,
            boxShadow: [
              BoxShadow(
                color: ResourcesData.colors.darkGrey.withOpacity(0.2),
                spreadRadius: 2.5,
                blurRadius: 5,
                // * changes position of shadow .
              ),
            ]),
        child: Column(
          children: [
            Column(
              children: List.generate(quick_add_data.length, (index) {
                return Column(
                  children: [
                    Padding(
                        padding: const EdgeInsets.only(
                            left: 10, right: 10, top: 12, bottom: 5),
                        child: ListTile(
                          isThreeLine: false,
                          minVerticalPadding: 0,
                          contentPadding: const EdgeInsets.all(0),
                          leading: CircleAvatar(
                              radius: 40,
                              backgroundImage: NetworkImage(
                                quick_add_data[index]["img"],
                              )),
                          title: Text(
                            quick_add_data[index]["name"],
                            style:
                                ResourcesData.textStyle.nameDiscoverTextStyle(),
                          ),
                          subtitle: Text(
                            quick_add_data[index]["nickname"],
                            style: ResourcesData.textStyle
                                .nickNameDiscoverTextStyle(),
                          ),
                          trailing: Container(
                            width: (sizeWidth - 88) * 0.3,
                            color: Colors.transparent,
                            child: Row(
                              children: [
                                Container(
                                  width: sizeWidth * 0.2,
                                  height: sizeHeight * 0.05,
                                  decoration: BoxDecoration(
                                      color: ResourcesData.colors.darkGrey
                                          .withOpacity(0.4),
                                      borderRadius: BorderRadius.circular(30)),
                                  child: Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceAround,
                                    children: [
                                      const Icon(Icons.person_pin),
                                      Text("Add",
                                          style: ResourcesData.textStyle
                                              .addDiscoverTextStyle())
                                    ],
                                  ),
                                )
                              ],
                            ),
                          ),
                        )),
                    // * Using Divider Because View sprat ListTile .
                    const Padding(
                      padding: EdgeInsets.symmetric(horizontal: 12.0),
                      child: Divider(thickness: 0.5),
                    ),
                  ],
                );
              }),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(
                "View More ...",
                style: ResourcesData.textStyle.headingDiscoverTextStyle(),
              ),
            ),
          ],
        ),
      )
    ],
  );
}
