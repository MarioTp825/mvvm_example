
/// This class will be use to initialize any object that will live through the
/// life cycle of the application. If you are not using any local storage, you
/// can remove the [initializedStorage] method and the [Storage] class.
class Storage {
  static final Storage _dataBase = Storage._internal();

  factory Storage() {
    return _dataBase;
  }

  Storage._internal();


  Future<void> initializedStorage() async {
    //Initialize internal data base or cache management here
  }
}