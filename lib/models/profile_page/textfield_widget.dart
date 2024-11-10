// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';

class TextFieldWidget extends StatefulWidget {
  final String label;
  final int maxLines;
  final String text;
  final ValueChanged<String> onChanged;

  const TextFieldWidget({
    Key? key,
    required this.label,
    this.maxLines = 1,
    required this.text,
    required this.onChanged,
  }) : super(key: key);

  @override
  State<TextFieldWidget> createState() => _TextFieldWidgetState();
}

class _TextFieldWidgetState extends State<TextFieldWidget> {
  late final TextEditingController controller;

  @override
  void initState() {
    super.initState();

    controller = TextEditingController(text: widget.text);
  }

  @override
  void dispose() {
    controller.dispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) => Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            widget.label,
            style: TextStyle(
              fontWeight: FontWeight.bold,
            ),
          ),
          SizedBox(
            height: 8,
          ),
          TextField(
            controller: controller,
            decoration: InputDecoration(
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(
                  12,
                ),
              ),
            ),
            maxLines: widget.maxLines,
          )
        ],
      );
}
