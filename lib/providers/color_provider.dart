// // ignore_for_file: overridden_fields

// import 'package:coloring_app/models/app_color.dart';
// import 'package:flutter/material.dart';

// /// inherited widget provides user picked options in menus
// class ColorInherit extends InheritedWidget {
//   /// inherited widget provides user picked options in menus
//   const ColorInherit({
//     required this.child,
//     // required this.color,
//     required this.isFill,
//     super.key,
//   }) : super(child: child);

//   /// picked color
//   // final CustomColor color;

//   /// is fill option active
//   final bool isFill;

//   /// child
//   @override
//   final Widget child;

//   ///
//   static ColorInherit? of(BuildContext context) {
//     return context.dependOnInheritedWidgetOfExactType<ColorInherit>();
//   }

//   @override
//   bool updateShouldNotify(ColorInherit oldWidget) 
//=> oldWidget.isFill != isFill;
// }
