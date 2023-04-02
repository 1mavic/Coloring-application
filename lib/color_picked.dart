import 'package:coloring_app/app_colors.dart';
import 'package:coloring_app/const_data.dart';
import 'package:coloring_app/models/app_color.dart';
import 'package:coloring_app/models/paint_object.dart';
import 'package:flutter/material.dart';

class ItemPickerWidget extends StatefulWidget {
  const ItemPickerWidget({
    Key? key,
    required this.onColorChange,
  }) : super(key: key);
  final Function(CustomColor color) onColorChange;
  @override
  State<ItemPickerWidget> createState() => _ItemPickerWidgetState();
}

class _ItemPickerWidgetState extends State<ItemPickerWidget> {
  final List<CustomColor> colorList = getAllColors();
  int pickedColorIndex = 0;

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
    Key? key,
    required this.color,
    required this.picked,
    required this.onTap,
  }) : super(key: key);
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
              ),
            ),
          ),
        ),
      ),
    );
  }
}
