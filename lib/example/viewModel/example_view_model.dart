import 'package:domain/domain.dart';
import 'package:flutter/material.dart';

class ExampleViewModel extends ChangeNotifier {
  ExampleViewModel() : super();

  List<ModelExample> _data = [];

  List<ModelExample> get data => _data;

  Future<void> fetchData() async {
    _data = [];
    //If you don't call this method, the changes won't trigger the UI
    notifyListeners();
  }
}