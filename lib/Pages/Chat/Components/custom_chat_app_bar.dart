import 'package:flutter/material.dart';
import 'package:snap_chat_clone/Resources/resources.dart';

class CustomChatAppBar extends StatelessWidget implements PreferredSizeWidget {
  const CustomChatAppBar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return AppBar(
      elevation: 0.0,
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
            "Chat",
            style: ResourcesData.textStyle.headingDiscoverTextStyle(),
          ),
          const SizedBox(
            width: 5,
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
                  Icons.person_add_sharp,
                  color: ResourcesData.colors.darkGrey,
                  size: 23,
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
                  Icons.edit_note_rounded,
                  color: ResourcesData.colors.darkGrey,
                  size: 23,
                ),
              )
            ],
          ),
        ],
      ),
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(60.0);
}
