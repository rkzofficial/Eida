import 'package:flutter/material.dart';

class ExpandedButton extends StatelessWidget {
  final Color buttonColor;
  final String textValue;
  final Color textColor;
  final bool isLoading;
  final void Function()? onPressed;

  const ExpandedButton(
      {Key? key,
      required this.buttonColor,
      required this.textValue,
      required this.textColor,
      this.onPressed,
      this.isLoading = false})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(
          width: double.infinity,
          child: ElevatedButton(
            style: ElevatedButton.styleFrom(
              padding: const EdgeInsets.symmetric(vertical: 16, horizontal: 0),
              elevation: 0,
              primary: buttonColor,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(12),
              ),
            ),
            onPressed: isLoading ? () {} : onPressed,
            child: isLoading
                ? Container(
                    width: 21,
                    height: 21,
                    padding: const EdgeInsets.all(2.0),
                    child: const CircularProgressIndicator(
                      color: Colors.white,
                      strokeWidth: 2,
                    ),
                  )
                : Text(
                    textValue,
                    style: Theme.of(context)
                        .textTheme
                        .button!
                        .copyWith(color: textColor),
                  ),
          ),
        ),
      ],
    );
  }
}
