import 'package:flutter/material.dart';
import 'package:mvvm_project/example/view/example_card_view.dart';
import 'package:mvvm_project/example/viewModel/example_view_model.dart';
import 'package:mvvm_project/utils/extension_list.dart';
import 'package:provider/provider.dart';

class ExampleScreen extends StatelessWidget {

  const ExampleScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
        create: (_) => ExampleViewModel(),
        child: const _ExampleScreenContent()
    );
  }
}

class _ExampleScreenContent extends StatelessWidget {

  const _ExampleScreenContent();

  @override
  Widget build(BuildContext context) {
    //When using this, you don't need to use a stateful widget
    // to listen to the changes
    final viewModel = context.watch<ExampleViewModel>();

    return Column(
      children: viewModel.data.mapWidget(context, (_, model) {
        return ExampleCardView(title: model, age: age)
      }),
    )
  }

}
