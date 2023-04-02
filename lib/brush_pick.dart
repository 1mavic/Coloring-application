import 'package:flutter/material.dart';

class BrushPickWidget extends StatefulWidget {
  const BrushPickWidget({
    Key? key,
    required this.onBrushPick,
    required this.onPaintFillPick,
    required this.onErasePick,
    required this.onSizePick,
  }) : super(key: key);
  final VoidCallback onBrushPick;
  final VoidCallback onPaintFillPick;
  final VoidCallback onErasePick;
  final Function(int) onSizePick;
  @override
  State<BrushPickWidget> createState() => _BrushPickWidgetState();
}

class _BrushPickWidgetState extends State<BrushPickWidget> {
  int picked = 0;
  int pickedSize = 0;

  final List<int> _sizeList = [4, 8, 12, 16];
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        GestureDetector(
          onTap: () {
            if (picked == 0) return;
            setState(() {
              picked = 0;
            });
            widget.onBrushPick();
          },
          child: Container(
            color: Colors.blue,
            padding: const EdgeInsets.only(left: 10, bottom: 5, top: 5),
            child: AnimatedContainer(
              duration: const Duration(milliseconds: 600),
              curve: Curves.bounceOut,
              width: picked == 0 ? 100 : 80,
              height: 40,
              child: const Icon(
                Icons.brush,
                color: Colors.white,
                size: 40,
              ),
            ),
          ),
        ),
        const SizedBox(
          height: 10,
        ),
        GestureDetector(
          onTap: () {
            if (picked == 1) return;
            setState(() {
              picked = 1;
            });
            widget.onPaintFillPick();
          },
          child: Container(
            color: Colors.blue,
            padding: const EdgeInsets.only(left: 10, bottom: 5, top: 5),
            child: AnimatedContainer(
              duration: const Duration(milliseconds: 600),
              curve: Curves.bounceOut,
              width: picked == 1 ? 100 : 80,
              height: 40,
              child: const Icon(
                Icons.format_paint_rounded,
                color: Colors.white,
                size: 40,
              ),
            ),
          ),
        ),
        const SizedBox(
          height: 10,
        ),
        GestureDetector(
          onTap: () {
            if (picked == 2) return;
            setState(() {
              picked = 2;
            });
            widget.onErasePick();
          },
          child: Container(
            color: Colors.blue,
            padding: const EdgeInsets.only(left: 10, bottom: 5, top: 5),
            child: AnimatedContainer(
              duration: const Duration(milliseconds: 600),
              curve: Curves.bounceOut,
              width: picked == 2 ? 100 : 80,
              height: 40,
              child: const Icon(
                Icons.layers_clear_outlined,
                color: Colors.white,
                size: 40,
              ),
            ),
          ),
        ),
        const SizedBox(
          height: 30,
        ),
        SizedBox(
          width: 150,
          child: ListView.separated(
            shrinkWrap: true,
            physics: const NeverScrollableScrollPhysics(),
            padding: EdgeInsets.zero,
            itemBuilder: (context, index) => Align(
              alignment: Alignment.centerLeft,
              child: GestureDetector(
                onTap: () {
                  if (pickedSize == index) return;
                  setState(() {
                    pickedSize = index;
                  });
                  widget.onSizePick(_sizeList[pickedSize]);
                },
                child: Container(
                  color: Colors.blue,
                  padding: const EdgeInsets.only(left: 10, bottom: 5, top: 5),
                  child: AnimatedContainer(
                    duration: const Duration(milliseconds: 600),
                    curve: Curves.bounceOut,
                    width: pickedSize == index ? 100 : 80,
                    height: 40,
                    child: Center(
                      child: Container(
                        width: 10 + (10 * index).toDouble(),
                        height: 10 + (10 * index).toDouble(),
                        decoration: const BoxDecoration(
                          shape: BoxShape.circle,
                          color: Colors.white,
                        ),
                      ),
                    ),
                  ),
                ),
              ),
            ),
            separatorBuilder: (_, __) => const SizedBox(
              height: 10,
            ),
            itemCount: _sizeList.length,
          ),
        ),
      ],
    );
  }
}
