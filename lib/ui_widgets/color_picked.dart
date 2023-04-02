import 'package:coloring_app/models/app_color.dart';
import 'package:flutter/material.dart';

/// widget with all colors options for user
class ColorPickerWidget extends StatefulWidget {
  ///
  const ColorPickerWidget({
    required this.onColorChange,
    required this.patternColors,
    super.key,
  });

  /// user picked new color callback
  final void Function(CustomColor color) onColorChange;

  /// list of image patterns for color panel
  final List<CustomColor> patternColors;
  @override
  State<ColorPickerWidget> createState() => _ColorPickerWidgetState();
}

class _ColorPickerWidgetState extends State<ColorPickerWidget> {
  final List<CustomColor> colorList = [];
  int pickedColorIndex = 0;
  @override
  void initState() {
    super.initState();
    colorList.addAll([...getAllColors(), ...widget.patternColors]);
  }

  @override
  void didUpdateWidget(covariant ColorPickerWidget oldWidget) {
    colorList
      ..clear()
      ..addAll([...getAllColors(), ...widget.patternColors]);
    super.didUpdateWidget(oldWidget);
  }

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 250,
      child: ListView.separated(
        shrinkWrap: true,
        physics: const NeverScrollableScrollPhysics(),
        itemBuilder: (context, index) => Align(
          alignment: Alignment.centerRight,
          child: _PickerItem(
            color: colorList[index],
            picked: pickedColorIndex == index,
            onTap: () {
              setState(() {
                pickedColorIndex = index;
              });

              widget.onColorChange(colorList[pickedColorIndex]);
            },
          ),
        ),
        separatorBuilder: (_, __) => const SizedBox(
          height: 10,
        ),
        itemCount: colorList.length,
      ),
    );
  }
}

class _PickerItem extends StatelessWidget {
  const _PickerItem({
    required this.color,
    required this.picked,
    required this.onTap,
  });
  final CustomColor color;
  final bool picked;
  final VoidCallback onTap;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        color: Colors.blue,
        padding: const EdgeInsets.only(left: 10, bottom: 5, top: 5),
        child: AnimatedContainer(
          duration: const Duration(milliseconds: 600),
          curve: Curves.bounceOut,
          width: picked ? 100 : 80,
          height: 40,
          decoration: color.map(
            oneColor: (oneColor) => BoxDecoration(
              color: oneColor.color,
            ),
            gradient: (gradient) => BoxDecoration(
              gradient: LinearGradient(colors: gradient.colors),
            ),
            pattern: (pattern) => BoxDecoration(
              image: DecorationImage(
                image: Image.asset(pattern.asset).image,
                fit: BoxFit.cover,
              ),
            ),
          ),
        ),
      ),
    );
  }
}
