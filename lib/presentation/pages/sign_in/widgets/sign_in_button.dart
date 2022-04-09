import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

/* -------------------------------------------------------------------------- */
/*                         subwidget for login button                         */
/* -------------------------------------------------------------------------- */
class SignInButton extends StatelessWidget {
  final String icon;
  final String text;
  final Function() onPressed;
  const SignInButton({
    Key? key,
    required this.icon,
    required this.text,
    required this.onPressed,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: onPressed,
      child: Row(
        children: [
          SvgPicture.asset(icon, height: 16, width: 16),
          const SizedBox(width: 14),
          Text(text),
        ],
      ),
    );
  }
}
