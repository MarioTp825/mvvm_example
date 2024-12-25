import 'package:flutter/material.dart';
import 'package:mvvm_project/config/app_theme.dart';

class ExampleCardView extends StatelessWidget {
  final String title;
  final int age;

  const ExampleCardView({super.key, required this.title, required this.age,});

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Column(
        children: [
          Text(title, style: context.themeFonts.headlineMedium),
          Text("Age: $age", style: context.themeFonts.bodySmall),
        ],
      ),
    )
  }
}
