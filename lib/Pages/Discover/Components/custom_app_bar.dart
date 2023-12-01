import 'package:flutter/material.dart';
import 'package:snap_chat_clone/Resources/resources.dart';

class GetAppBar extends StatelessWidget implements PreferredSizeWidget {
  const GetAppBar({
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
            "Discover",
            style: TextStyle(
                fontSize: 18,
                color: ResourcesData.colors.black,
                fontWeight: FontWeight.bold),
          ),
          const SizedBox(
            width: 5,
          ),
          Container(
            width: 40,
            height: 40,
            decoration: BoxDecoration(
                shape: BoxShape.circle,
                color: ResourcesData.colors.black.withOpacity(0.1)),
            child: Icon(
              Icons.supervised_user_circle_rounded,
              color: ResourcesData.colors.darkGrey,
              size: 20,
            ),
          ),
        ],
      ),
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(60.0);
}
