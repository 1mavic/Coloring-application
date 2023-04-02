import 'package:flutter/material.dart';

class ItemPickerWidget extends StatefulWidget {
  const ItemPickerWidget({
    Key? key,
    required this.onColorChange,
  }) : super(key: key);
  final Function(Color color) onColorChange;
  @override
  State<ItemPickerWidget> createState() => _ItemPickerWidgetState();
}

class _ItemPickerWidgetState extends State<ItemPickerWidget> {
  final List<Color> colorList = [
    Colors.black,
    Colors.white,
    Colors.green,
    Colors.red,
    Colors.yellow,
    Colors.amber,
    Colors.cyan,
    Colors.orange,
    Colors.purple,
  ];
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
  final Color color;
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
          color: color,
        ),
      ),
    );
  }
}
