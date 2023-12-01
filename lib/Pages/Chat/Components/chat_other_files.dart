import 'package:flutter/material.dart';

import '../../../Data/chat_jsond.dart';
import '../../../Resources/resources.dart';

Widget getBody(sizeHeight, sizeWidth) {
  return Container(
    width: sizeWidth,
    height: sizeHeight,
    decoration: const BoxDecoration(
        borderRadius: BorderRadius.only(
            bottomLeft: Radius.circular(10), bottomRight: Radius.circular(10)),
        color: Colors.white),
    child: SingleChildScrollView(
      child: Column(
        children: [
          const SizedBox(
            height: 10,
          ),
          // ! Quick Add Text
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 12.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Flexible(
                  child: Container(
                    height: 1,
                    decoration:
                        BoxDecoration(color: Colors.grey.withOpacity(0.2)),
                  ),
                ),
                const SizedBox(
                  width: 10,
                ),
                Text(
                  "Quick Add",
                  style: TextStyle(color: ResourcesData.colors.blue),
                ),
                const SizedBox(
                  width: 10,
                ),
                Flexible(
                  child: Container(
                    height: 1,
                    decoration: BoxDecoration(
                        color: ResourcesData.colors.darkGrey.withOpacity(0.2)),
                  ),
                ),
              ],
            ),
          ),

          SizedBox(
            height: sizeHeight * 0.01,
          ),

          Column(
            children: List.generate(chat_data.length, (index) {
              return ListTile(
                leading: Container(
                  height: 50,
                  width: 50,
                  decoration: const BoxDecoration(
                    shape: BoxShape.circle,
                  ),
                  child: CircleAvatar(
                      radius: 40,
                      backgroundImage: NetworkImage(
                        chat_data[index]["img"],
                      )),
                ),
                title: Text(
                  chat_data[index]["name"],
                  style: ResourcesData.textStyle.nameChatTextStyle(),
                ),
                subtitle: Text(
                  chat_data[index]["nickname"],
                  style: ResourcesData.textStyle.nickNameChatTextStyle(),
                ),
                trailing: Container(
                  width: (sizeWidth - 80) * 0.4,
                  color: const Color.fromARGB(0, 144, 96, 96),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Container(
                        width: sizeWidth * 0.21,
                        height: sizeHeight * 0.05,
                        decoration: BoxDecoration(
                            border:
                                Border.all(color: ResourcesData.colors.blue),
                            borderRadius: BorderRadius.circular(30)),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: [
                            const Icon(Icons.perm_camera_mic, size: 20),
                            Text("Add",
                                style: ResourcesData.textStyle
                                    .addDiscoverTextStyle())
                          ],
                        ),
                      ),
                      Icon(
                        Icons.add_call,
                        color: ResourcesData.colors.purple,
                      )
                    ],
                  ),
                ),
              );
            }),
          )
        ],
      ),
    ),
  );
}
