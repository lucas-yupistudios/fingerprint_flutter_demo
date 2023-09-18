import 'package:flutter/material.dart';

class DropdownWidget extends StatefulWidget {
  final List<String> items;
  final String initialValue;
  final String label;
  final Function(String?)? onChanged;

  const DropdownWidget({
    super.key,
    required this.items,
    required this.initialValue,
    required this.label,
    this.onChanged,
  });

  @override
  State<DropdownWidget> createState() => _DropdownWidgetState();
}

class _DropdownWidgetState extends State<DropdownWidget> {
  String? selectedItem;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(widget.label),
        DropdownButton(
          isExpanded: true,
          value: selectedItem ?? widget.initialValue,
          items: widget.items
              .map((resolution) => DropdownMenuItem(
                    value: resolution,
                    child: Text(resolution),
                  ))
              .toList(),
          onChanged: (value) {
            setState(() => selectedItem = value!);
            if (widget.onChanged != null) {
              widget.onChanged!(value);
            }
          },
        ),
      ],
    );
  }
}
