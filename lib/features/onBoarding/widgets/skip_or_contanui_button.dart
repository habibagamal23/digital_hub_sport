import 'package:flutter/material.dart';

import '../../../core/theme/style.dart';

class SkipOrContinueButton extends StatelessWidget {
  final bool isLastPage;
  final VoidCallback onPressed;

  const SkipOrContinueButton({
    Key? key,
    required this.isLastPage,
    required this.onPressed,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextButton(
      onPressed: onPressed,
      child: Text(
        isLastPage ? 'Continue' : 'Skip',
        style: TextStyles.body,
      ),
    );
  }
}
