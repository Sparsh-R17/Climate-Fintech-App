import 'package:flutter/material.dart';

class DrawerListTile extends StatefulWidget {
  final Color containerColor;
  final String name;
  final String containerImage;
  final String tagName;
  final IconData tileIcon;
  final int index;

  const DrawerListTile({
    super.key,
    required this.index,
    required this.containerColor,
    required this.name,
    required this.containerImage,
    required this.tagName,
    required this.tileIcon,
  });

  @override
  State<DrawerListTile> createState() => _DrawerListTileState();
}

class _DrawerListTileState extends State<DrawerListTile> {
  bool toggleButton = false;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        if (widget.index == 4) {
          setState(() {
            toggleButton = !toggleButton;
          });
        } else {
          print('Tap detected');
        }
      },
      child: ListTile(
        minVerticalPadding: 10,
        contentPadding: const EdgeInsets.symmetric(horizontal: 2),
        leading: Container(
          height: MediaQuery.of(context).size.height * 0.04,
          width: MediaQuery.of(context).size.width * 0.10,
          decoration: BoxDecoration(
            color: widget.containerColor,
            borderRadius: BorderRadius.circular(10),
          ),
          child: Image.asset(widget.containerImage),
        ),
        trailing: widget.index == 4
            ? toggleButton
                ? const Icon(
                    Icons.toggle_on_sharp,
                    color: Colors.green,
                    size: 40,
                  )
                : Icon(
                    widget.tileIcon,
                    size: 40,
                  )
            : Icon(widget.tileIcon),
        title: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(widget.name),
            Text(
              widget.tagName,
              style: const TextStyle(
                  color: Color.fromARGB(156, 157, 152, 152), fontSize: 12),
            ),
          ],
        ),
      ),
    );
  }
}
