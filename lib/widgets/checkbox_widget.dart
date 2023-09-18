import 'package:flutter/material.dart';

class CheckboxWidget extends StatefulWidget {
  final String text;
  final bool initialValue;
  final Function(bool?)? onChanged;

  const CheckboxWidget({
    super.key,
    required this.text,
    required this.initialValue,
    this.onChanged,
  });

  @override
  State<CheckboxWidget> createState() => _CheckboxWidgetState();
}

class _CheckboxWidgetState extends State<CheckboxWidget> {
  bool? checked;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Text(widget.text),
        Checkbox(
          value: checked ?? widget.initialValue,
          onChanged: (value) {
            setState(() => checked = value);
            if (widget.onChanged != null) {
              widget.onChanged!(value);
            }
          },
        )
      ],
    );
  }
}
