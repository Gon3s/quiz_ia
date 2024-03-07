import 'package:flutter/material.dart';

import '../../../constants/app_colors.dart';
import '../../../constants/app_values.dart';
import '../circular_progress_widget.dart';

class ButtonFilledWidget extends StatelessWidget {
  const ButtonFilledWidget({
    super.key,
    required this.text,
    this.onTap,
    this.isDisabled = false,
    this.isLoading = false,
  });

  final String text;
  final void Function()? onTap;
  final bool isDisabled;
  final bool isLoading;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: isDisabled ? null : onTap,
      child: Container(
        alignment: Alignment.center,
        width: double.infinity,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(AppValues.defaultRadius),
          gradient: const LinearGradient(
            begin: Alignment.centerLeft,
            end: Alignment.centerRight,
            colors: [
              AppColors.purple,
              AppColors.pink,
            ],
          ),
          boxShadow: [
            BoxShadow(
              color: AppColors.pink.withOpacity(.3),
              offset: const Offset(0, 3),
              blurRadius: 10,
            ),
          ],
        ),
        // color: Theme.of(context).primaryColor,
        padding: const EdgeInsets.all(AppValues.defaultPadding),
        child: isLoading
            ? const CircularProgressWidget()
            : Text(
                text,
                style: TextStyle(
                  color: isDisabled ? AppColors.white.withOpacity(.5) : AppColors.white,
                ),
              ),
      ),
    );
  }
}
