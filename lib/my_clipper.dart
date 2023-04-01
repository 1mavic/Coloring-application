import 'dart:ui';

import 'package:coloring_app/my_painter.dart';
import 'package:flutter/material.dart';

class MyClipper extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    Path path = Path()
      ..moveTo(
          size.width / 3, size.height / 3) // передвигаем точку в (width/2, 0)
      ..lineTo(size.width / 3, size.height / 3 * 2)
      ..lineTo(size.width / 3 * 2, size.height / 3 * 2)
      ..lineTo(size.width / 3 * 2, size.height / 3)
      ..lineTo(size.width / 3, size.height / 3)
      ..close();

    return path;
  }

  @override
  bool shouldReclip(CustomClipper<Path> oldClipper) => false;
}

class IconClipper extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    Path path_0 = Path();
    path_0.moveTo(size.width * 0.5000000, size.height * 0.9444444);
    path_0.cubicTo(
        size.width * 0.4936800,
        size.height * 0.9445056,
        size.width * 0.4874539,
        size.height * 0.9429111,
        size.width * 0.4819444,
        size.height * 0.9398111);
    path_0.cubicTo(size.width * 0.4620372, size.height * 0.9287000, 0,
        size.height * 0.6662000, 0, size.height * 0.3333328);
    path_0.cubicTo(
        0,
        size.height * 0.2750322,
        size.width * 0.01834372,
        size.height * 0.2182094,
        size.width * 0.05243272,
        size.height * 0.1709133);
    path_0.cubicTo(
        size.width * 0.08652167,
        size.height * 0.1236178,
        size.width * 0.1346278,
        size.height * 0.08824667,
        size.width * 0.1899367,
        size.height * 0.06981000);
    path_0.cubicTo(
        size.width * 0.2452456,
        size.height * 0.05137389,
        size.width * 0.3049533,
        size.height * 0.05080733,
        size.width * 0.3606022,
        size.height * 0.06819056);
    path_0.cubicTo(
        size.width * 0.4162511,
        size.height * 0.08557389,
        size.width * 0.4650194,
        size.height * 0.1200261,
        size.width * 0.5000000,
        size.height * 0.1666667);
    path_0.cubicTo(
        size.width * 0.5349806,
        size.height * 0.1200261,
        size.width * 0.5837500,
        size.height * 0.08557389,
        size.width * 0.6394000,
        size.height * 0.06819056);
    path_0.cubicTo(
        size.width * 0.6950444,
        size.height * 0.05080733,
        size.width * 0.7547556,
        size.height * 0.05137389,
        size.width * 0.8100611,
        size.height * 0.06981000);
    path_0.cubicTo(
        size.width * 0.8653722,
        size.height * 0.08824667,
        size.width * 0.9134778,
        size.height * 0.1236178,
        size.width * 0.9475667,
        size.height * 0.1709133);
    path_0.cubicTo(size.width * 0.9816556, size.height * 0.2182094, size.width,
        size.height * 0.2750322, size.width, size.height * 0.3333328);
    path_0.cubicTo(
        size.width,
        size.height * 0.4749989,
        size.width * 0.9180556,
        size.height * 0.6203667,
        size.width * 0.7564833,
        size.height * 0.7657389);
    path_0.cubicTo(
        size.width * 0.6831111,
        size.height * 0.8316944,
        size.width * 0.6032278,
        size.height * 0.8900222,
        size.width * 0.5180556,
        size.height * 0.9398111);
    path_0.cubicTo(
        size.width * 0.5125461,
        size.height * 0.9429111,
        size.width * 0.5063200,
        size.height * 0.9445056,
        size.width * 0.5000000,
        size.height * 0.9444444);
    path_0.close();
    path_0.moveTo(size.width * 0.2777778, size.height * 0.1296294);
    path_0.cubicTo(
        size.width * 0.2237522,
        size.height * 0.1296294,
        size.width * 0.1719394,
        size.height * 0.1510911,
        size.width * 0.1337378,
        size.height * 0.1892928);
    path_0.cubicTo(
        size.width * 0.09553556,
        size.height * 0.2274944,
        size.width * 0.07407389,
        size.height * 0.2793072,
        size.width * 0.07407389,
        size.height * 0.3333328);
    path_0.cubicTo(
        size.width * 0.07407389,
        size.height * 0.5888889,
        size.width * 0.4166667,
        size.height * 0.8134222,
        size.width * 0.5000000,
        size.height * 0.8643500);
    path_0.cubicTo(
        size.width * 0.5833333,
        size.height * 0.8134222,
        size.width * 0.9259278,
        size.height * 0.5888889,
        size.width * 0.9259278,
        size.height * 0.3333328);
    path_0.cubicTo(
        size.width * 0.9259667,
        size.height * 0.2862417,
        size.width * 0.9096944,
        size.height * 0.2405900,
        size.width * 0.8798722,
        size.height * 0.2041450);
    path_0.cubicTo(
        size.width * 0.8500500,
        size.height * 0.1677000,
        size.width * 0.8085222,
        size.height * 0.1427133,
        size.width * 0.7623556,
        size.height * 0.1334361);
    path_0.cubicTo(
        size.width * 0.7161833,
        size.height * 0.1241589,
        size.width * 0.6682278,
        size.height * 0.1311639,
        size.width * 0.6266444,
        size.height * 0.1532594);
    path_0.cubicTo(
        size.width * 0.5850556,
        size.height * 0.1753556,
        size.width * 0.5524106,
        size.height * 0.2111767,
        size.width * 0.5342594,
        size.height * 0.2546294);
    path_0.cubicTo(
        size.width * 0.5314689,
        size.height * 0.2614222,
        size.width * 0.5267222,
        size.height * 0.2672322,
        size.width * 0.5206217,
        size.height * 0.2713211);
    path_0.cubicTo(
        size.width * 0.5145217,
        size.height * 0.2754100,
        size.width * 0.5073439,
        size.height * 0.2775933,
        size.width * 0.5000000,
        size.height * 0.2775933);
    path_0.cubicTo(
        size.width * 0.4926561,
        size.height * 0.2775933,
        size.width * 0.4854783,
        size.height * 0.2754100,
        size.width * 0.4793783,
        size.height * 0.2713211);
    path_0.cubicTo(
        size.width * 0.4732778,
        size.height * 0.2672322,
        size.width * 0.4685311,
        size.height * 0.2614222,
        size.width * 0.4657406,
        size.height * 0.2546294);
    path_0.cubicTo(
        size.width * 0.4503250,
        size.height * 0.2175122,
        size.width * 0.4242272,
        size.height * 0.1858128,
        size.width * 0.3907606,
        size.height * 0.1635567);
    path_0.cubicTo(
        size.width * 0.3572944,
        size.height * 0.1413006,
        size.width * 0.3179689,
        size.height * 0.1294917,
        size.width * 0.2777778,
        size.height * 0.1296294);
    path_0.close();

    return path_0;
  }

  @override
  bool shouldReclip(CustomClipper<Path> oldClipper) => true;
}

// class MyClipper extends CustomClipper<Path> {
//   @override
//   Path getClip(Size size) {
//     Path path = Path()
//       ..moveTo(
//           size.width / 3, size.height / 3) // передвигаем точку в (width/2, 0)
//       ..lineTo(size.width / 3, size.height / 3 * 2)
//       ..lineTo(size.width / 3 * 2, size.height / 3 * 2)
//       ..lineTo(size.width / 3 * 2, size.height / 3)
//       ..lineTo(size.width / 3, size.height / 3)
//       ..close();

//     return path;
//   }

//   @override
//   bool shouldReclip(CustomClipper<Path> oldClipper) => false;
// }

class MyCustomClipper extends CustomClipper<Path> {
  final Path myPath;

  MyCustomClipper(this.myPath);
  @override
  Path getClip(Size size) {
    // final center = Offset(size.width / 2 + 18, size.height / 2 - 9);
    // final matrix = Matrix4.identity()..translate(center.dx, center.dy);
    // final scaledPath = myPath.transform(matrix.storage);
    return scalePath(myPath, 16);
  }

  @override
  bool shouldReclip(MyCustomClipper oldClipper) => true;
}
