import 'package:flutter/material.dart';

typedef WidgetItemBuilder<T> = Widget Function(BuildContext context, T item);

extension ListExtension<T> on List<T> {
  List<Widget> mapWidget(BuildContext context, WidgetItemBuilder builder) {
    return map((item) => builder(context, item)).toList();
  }
}
