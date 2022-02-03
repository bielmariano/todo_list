import 'package:flutter/material.dart';

class InputTaskWidget extends StatelessWidget {
  final String labelText;
  final String textButton;
  final TextEditingController textController;
  final Function()? onPressed;
  const InputTaskWidget({
    Key? key,
    required this.labelText,
    required this.textButton,
    required this.textController,
    this.onPressed,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
              children: [
                Expanded(
                  child: TextField(
                    controller: textController,
                    decoration: InputDecoration(labelText: labelText),
                  ),
                ),
                TextButton(
                  onPressed: onPressed,
                  child: Text(textButton),
                ),
              ],
            );
  }
}
