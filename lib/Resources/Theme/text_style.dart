import 'package:flutter/material.dart';
import '../resources.dart';

class CustomTextStyle {
  // ! Discover Page Text Style .
  TextStyle headingDiscoverTextStyle() {
    return TextStyle(
        fontSize: 19,
        color: ResourcesData.colors.black,
        fontWeight: FontWeight.bold);
  }

  TextStyle nameDiscoverTextStyle() {
    return TextStyle(
        fontSize: 17,
        color: ResourcesData.colors.black,
        fontWeight: FontWeight.bold);
  }

  TextStyle nickNameDiscoverTextStyle() {
    return TextStyle(
        fontSize: 14,
        color: ResourcesData.colors.black.withOpacity(0.5),
        fontWeight: FontWeight.bold);
  }

  TextStyle addDiscoverTextStyle() {
    return TextStyle(
        fontSize: 16,
        color: ResourcesData.colors.black,
        fontWeight: FontWeight.bold);
  }

  // ! Chat Page Text Style .

  TextStyle nameChatTextStyle() {
    return TextStyle(
        fontSize: 17,
        color: ResourcesData.colors.black,
        fontWeight: FontWeight.bold);
  }

  TextStyle nickNameChatTextStyle() {
    return TextStyle(
        fontSize: 14,
        color: ResourcesData.colors.black.withOpacity(0.5),
        fontWeight: FontWeight.bold);
  }
}
