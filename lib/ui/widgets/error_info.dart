import 'package:flutter/material.dart';

class ErrorInfo extends StatelessWidget {
  final String? message;

  const ErrorInfo({super.key, this.message});

  @override
  Widget build(BuildContext context) {
    return Text(
      message ?? 'Error',
      maxLines: 1,
      overflow: TextOverflow.ellipsis,
      style: const TextStyle(
        color: Colors.red,
        fontSize: 14,
        fontWeight: FontWeight.w500,
      ),
    );
  }
}
