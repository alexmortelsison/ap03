import 'package:flutter/material.dart';

class SquareTile extends StatelessWidget {
  final String imagePath;
  final void Function()? onTap;
  const SquareTile({
    super.key,
    required this.imagePath,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        decoration: BoxDecoration(
          color: Theme.of(context).colorScheme.primary,
          border: Border.all(
            color: Theme.of(context).colorScheme.secondary,
          ),
          borderRadius: BorderRadius.circular(8),
        ),
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Image.asset(
            imagePath,
            height: 40,
          ),
        ),
      ),
    );
  }
}
