import 'package:flutter/material.dart';
import 'text_custom.dart';

class EmptyStateWidget extends StatelessWidget {
  const EmptyStateWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Icon(Icons.error_outline_rounded,),
        TextCustom(
          text: 'No Data Found',
        ),
      ],
    );
  }
}
