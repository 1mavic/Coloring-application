import 'package:coloring_app/ui_widgets/my_painter.dart';
import 'package:flutter/material.dart';

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

/// custom clipper. clips part of image with provided path
class MyCustomClipper extends CustomClipper<Path> {
  /// custom clipper. clips part of image with provided path
  MyCustomClipper(this.myPath);

  /// path to use on clip
  final Path myPath;

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
