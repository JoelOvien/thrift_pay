abstract class StorageService {
  Future<bool> firstTime();

  Future<bool> setFirstTime();

  Future<bool> setIsProfileCompleted({bool complete});

  Future<bool> isProfileCompleted();
}

class StorageServiceFake extends StorageService {
  @override
  Future<bool> firstTime() async {
    return true;
  }

  @override
  Future<bool> setFirstTime() async {
    return false;
  }

  @override
  Future<bool> isProfileCompleted() async {
    return true;
  }

  @override
  Future<bool> setIsProfileCompleted({bool complete}) async {}
}

class StorageServiceReal extends StorageService {
  @override
  Future<bool> firstTime() {}

  @override
  Future<bool> isProfileCompleted() {}

  @override
  Future<bool> setFirstTime() {}

  @override
  Future<bool> setIsProfileCompleted({bool complete}) {}
}
