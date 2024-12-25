import 'package:domain/src/modelExample/model/model_example.dart';

/// This is the example of how the base repository should be created.
/// There should be no business logic in the repository nor any dependencies as well.
abstract class ExampleRepository {
  ExampleRepository();

  /// Only the signature of the method should be declared with no implementation whatsoever.
  Future<List<ModelExample>> getItems();
}
