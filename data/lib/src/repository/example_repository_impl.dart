import 'package:domain/domain.dart';

class ExampleRepositoryImpl implements ExampleRepository {
  //inject your sources here like isar to simplify testing
  //final ExampleDataSource exampleDataSource;

  ExampleRepositoryImpl();

  @override
  Future<List<ModelExample>> getItems() async {
    // TODO: create a method to get items from the data source
    return [1,2,3,5].map((e) => ModelExample(name: "Item $e", age: e)).toList();
  }
}