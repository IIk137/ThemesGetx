import 'package:flutter/material.dart';
import 'package:get/get_utils/src/extensions/context_extensions.dart';

class PrimaryButton extends StatelessWidget {
  final VoidCallback onPress;
  final String text;

  const PrimaryButton({Key? key, required this.onPress, required this.text})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onPress,
      child: Padding(
        padding: const EdgeInsets.all(10.0),
        child: Container(
          height: 50,
          width: 200,
          decoration: BoxDecoration(
              border: Border.all(
                  color: context.theme.colorScheme.primary, width: 5),
              borderRadius: BorderRadius.circular(25)),
          child: Center(
            child: Text(
              text,
              style: context.textTheme.button,
            ),
          ),
        ),
      ),
    );
  }
}
