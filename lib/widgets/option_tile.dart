import 'package:flutter/material.dart';

class OptionTile extends StatefulWidget {
  final String label;
  final String title;
  final bool isSelected;
  final Function(bool) onSelected;

  const OptionTile({
    super.key,
    required this.label,
    required this.title,
    required this.isSelected,
    required this.onSelected,
  });

  @override
  State<OptionTile> createState() => _OptionTileState();
}

class _OptionTileState extends State<OptionTile> {
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        widget.onSelected(!widget.isSelected);
      },
      child: Container(
        margin: const EdgeInsets.symmetric(vertical: 6),
        padding: const EdgeInsets.symmetric(vertical: 14, horizontal: 12),
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(10),
          border: widget.isSelected
              ? Border.all(color: Colors.indigo, width: 2)
              : null,
        ),
        child: Row(
          children: [
            CircleAvatar(
              radius: 14,
              backgroundColor: Colors.grey[200],
              child: Text(widget.label,
                  style: const TextStyle(fontWeight: FontWeight.bold)),
            ),
            const SizedBox(width: 12),
            Text(
              widget.title,
              style: const TextStyle(fontWeight: FontWeight.bold),
            ),
          ],
        ),
      ),
    );
  }
}
