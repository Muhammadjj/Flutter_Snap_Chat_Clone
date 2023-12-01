//  ! Widget of Floating Point Buttons
import 'package:flutter/material.dart';
import '../../../Resources/resources.dart';

Widget getFooter(sizeHeight, sizeWidth) {
  return Padding(
    padding: const EdgeInsets.only(left: 30, top: 60),
    child: Column(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Row(
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
                    color: ResourcesData.colors.primary,
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
            Container(
              decoration: BoxDecoration(boxShadow: [
                BoxShadow(
                  color: ResourcesData.colors.darkGrey.withOpacity(0.30),
                  spreadRadius: 20,
                  blurRadius: 40,
                  // changes position of shadow
                ),
              ], color: Colors.transparent),
              child: Column(
                children: [
                  Text(
                    "Pakistan Lahore",
                    style: TextStyle(
                        fontSize: 16,
                        color: ResourcesData.colors.white,
                        fontWeight: FontWeight.bold),
                  ),
                  SizedBox(
                    height: sizeHeight * 0.005,
                  ),
                  Row(
                    children: [
                      Icon(
                        Icons.cloud,
                        color: ResourcesData.colors.white,
                        size: 15,
                      ),
                      SizedBox(
                        width: sizeWidth * 0.1,
                      ),
                      Text(
                        "25 c",
                        style: TextStyle(
                            color: ResourcesData.colors.white, fontSize: 13),
                      )
                    ],
                  )
                ],
              ),
            ),
            const SizedBox(
              width: 5,
            ),
            Container(
              width: 40,
              height: 40,
              decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  color: ResourcesData.colors.black.withOpacity(0.3)),
              child: Icon(
                Icons.settings,
                color: ResourcesData.colors.white,
                size: 23,
              ),
            )
          ],
        ),
        // ! Under Floating Buttons .
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            SizedBox(
              height: 70,
              width: 80,
              child: Stack(
                children: [
                  Positioned(
                    left: 3,
                    child: Container(
                      width: 60,
                      height: 60,
                      decoration: const BoxDecoration(
                          shape: BoxShape.circle, color: Colors.white),
                      child: Center(
                        child: Container(
                          width: 45,
                          height: 45,
                          decoration: BoxDecoration(
                              shape: BoxShape.circle,
                              color: Colors.grey.withOpacity(0.5)),
                          child: const Center(
                            child: Icon(
                              Icons.person,
                              color: Colors.grey,
                              size: 30,
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                  Positioned(
                    bottom: 0,
                    child: Container(
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          color: Colors.white),
                      child: const Padding(
                        padding: EdgeInsets.all(5.0),
                        child: Text(
                          "My Bitmoji",
                          style: TextStyle(
                              fontSize: 11, fontWeight: FontWeight.bold),
                        ),
                      ),
                    ),
                  )
                ],
              ),
            ),
            Container(
              width: 35,
              height: 35,
              decoration: BoxDecoration(boxShadow: [
                BoxShadow(
                  color: ResourcesData.colors.darkGrey.withOpacity(0.20),
                  spreadRadius: 20,
                  blurRadius: 40,
                  // changes position of shadow
                ),
              ], shape: BoxShape.circle, color: Colors.white),
              child: const Center(
                child: Icon(
                  Icons.location_on,
                  size: 20,
                ),
              ),
            ),
            SizedBox(
              height: 70,
              width: 70,
              child: Stack(
                children: [
                  Positioned(
                    left: 3,
                    child: Container(
                      width: 60,
                      height: 60,
                      decoration: const BoxDecoration(
                          shape: BoxShape.circle, color: Colors.white),
                      child: Center(
                        child: Container(
                          width: 45,
                          height: 45,
                          decoration: BoxDecoration(
                              shape: BoxShape.circle,
                              color: Colors.grey.withOpacity(0.5)),
                          child: const Center(
                            child: Icon(
                              Icons.person_2,
                              color: Colors.grey,
                              size: 30,
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                  Positioned(
                    bottom: 0,
                    child: Container(
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          color: ResourcesData.colors.white),
                      child: const Padding(
                        padding: EdgeInsets.only(
                            top: 5, bottom: 5, left: 12, right: 12),
                        child: Text(
                          "Friends",
                          style: TextStyle(
                              fontSize: 11, fontWeight: FontWeight.bold),
                        ),
                      ),
                    ),
                  )
                ],
              ),
            )
          ],
        ),
      ],
    ),
  );
}
