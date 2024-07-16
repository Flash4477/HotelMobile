import 'dart:ffi';

import 'rive_model.dart';

class NavItemModel{
  final String title;
  final RiveModel rive;

  NavItemModel({required this.title, required this.rive});
}

List<NavItemModel> bottomNavItems = [
  NavItemModel(
    title: "Home",
    rive: RiveModel(
      src: "",
      artboard: "HOME",
      statteMachineName: "HOME_Interactivity",
    ),
  ),
  NavItemModel(
    title: "Search",
    rive: RiveModel(
      src: "",
      artboard: "SEARCH",
      statteMachineName: "SEARCH_Interactivity",
    ),
  ),
  NavItemModel(
    title: "Profile",
    rive: RiveModel(
      src: "",
      artboard: "PROFILE",
      statteMachineName: "PROFILE_Interactivity",
    ),
  ),
];