import 'package:flutter/material.dart';

class LoadingImage extends StatelessWidget {
  const LoadingImage({super.key});

  @override
  Widget build(BuildContext context) {
    return const SizedBox(
      width: 25.0,
      height: 25.0,
      child: CircularProgressIndicator(),
    );
  }
}
